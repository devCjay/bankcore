<?php

namespace App\Http\Controllers;

use App\Support\Installation;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Str;
use PDO;
use Throwable;

class InstallController extends Controller
{
    private const MINIMUM_PHP_VERSION = '7.3.0';

    private $requiredExtensions = [
        'bcmath',
        'ctype',
        'curl',
        'fileinfo',
        'json',
        'mbstring',
        'openssl',
        'pdo',
        'pdo_mysql',
        'tokenizer',
        'xml',
        'zip',
    ];

    public function index(Request $request)
    {
        return $this->renderStep($request, 'requirements');
    }

    public function requirements(Request $request)
    {
        return $this->renderStep($request, 'requirements');
    }

    public function license(Request $request)
    {
        return $this->renderStep($request, 'license');
    }

    public function verifyLicense(Request $request)
    {
        $data = $request->validate([
            'license_key' => ['required', 'string', 'min:12', 'max:190'],
            'license_email' => ['nullable', 'email', 'max:190'],
        ]);

        $result = $this->validateLicense($data['license_key'], $data['license_email'] ?? null, $request->getHost());

        if (!$result['valid']) {
            return back()->withInput()->withErrors(['license_key' => $result['message']]);
        }

        $request->session()->put('install.license', [
            'key' => $data['license_key'],
            'email' => $data['license_email'] ?? '',
            'domain' => $request->getHost(),
            'status' => $result['status'],
            'verified_at' => now()->toDateTimeString(),
        ]);

        return redirect()->route('install.database')->with('success', $result['message']);
    }

    public function database(Request $request)
    {
        if (!$request->session()->has('install.license')) {
            return redirect()->route('install.license');
        }

        return $this->renderStep($request, 'database');
    }

    public function saveDatabase(Request $request)
    {
        if (!$request->session()->has('install.license')) {
            return redirect()->route('install.license');
        }

        $data = $request->validate([
            'db_host' => ['required', 'string', 'max:190'],
            'db_port' => ['required', 'numeric'],
            'db_database' => ['required', 'string', 'max:190'],
            'db_username' => ['required', 'string', 'max:190'],
            'db_password' => ['nullable', 'string', 'max:190'],
        ]);

        try {
            $pdo = $this->connectToDatabase($data);
            $pdo->query('select 1');
        } catch (Throwable $exception) {
            return back()->withInput()->withErrors(['db_database' => 'Database connection failed: ' . $exception->getMessage()]);
        }

        $request->session()->put('install.database', $data);

        return redirect()->route('install.import')->with('success', 'Database connection verified.');
    }

    public function import(Request $request)
    {
        if (!$request->session()->has('install.database')) {
            return redirect()->route('install.database');
        }

        return $this->renderStep($request, 'import');
    }

    public function runImport(Request $request)
    {
        $database = $request->session()->get('install.database');
        $license = $request->session()->get('install.license');

        if (!$database || !$license) {
            return redirect()->route('install.index');
        }

        $sqlFile = $this->databaseFilePath();

        if (!$sqlFile || !is_readable($sqlFile)) {
            return back()->withErrors(['import' => 'The database SQL file could not be found or read.']);
        }

        try {
            @set_time_limit(0);
            $pdo = $this->connectToDatabase($database);
            $this->importSqlFile($pdo, $sqlFile);
            $this->updateSettingsAfterImport($pdo, $request);
            $this->updateEnvironmentForPendingInstall($request, $database, $license);
            $request->session()->put('install.imported', true);
        } catch (Throwable $exception) {
            return back()->withErrors(['import' => 'Import failed: ' . $exception->getMessage()]);
        }

        return redirect()->route('install.admin')->with('success', 'Database imported. Create the first admin to finish installation.');
    }

    public function admin(Request $request)
    {
        if (!$request->session()->get('install.imported')) {
            return redirect()->route('install.import');
        }

        return $this->renderStep($request, 'admin');
    }

    public function saveAdmin(Request $request)
    {
        if (!$request->session()->get('install.imported')) {
            return redirect()->route('install.import');
        }

        $data = $request->validate([
            'first_name' => ['required', 'string', 'max:100'],
            'last_name' => ['required', 'string', 'max:100'],
            'email' => ['required', 'email', 'max:190'],
            'phone' => ['nullable', 'string', 'max:50'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);

        $database = $request->session()->get('install.database');

        try {
            $pdo = $this->connectToDatabase($database);

            if ($this->adminEmailExists($pdo, $data['email'])) {
                return back()->withInput()->withErrors(['email' => 'An admin with this email already exists.']);
            }

            $this->createAdmin($pdo, $data);
            $this->writeEnvironment([
                'APP_INSTALLED' => 'true',
            ]);
            $this->createInstallLock();
            Artisan::call('config:clear');
        } catch (Throwable $exception) {
            return back()->withInput()->withErrors(['email' => 'Admin creation failed: ' . $exception->getMessage()]);
        }

        $request->session()->forget('install');

        return redirect()->route('install.complete');
    }

    public function complete(Request $request)
    {
        return view('install.index', [
            'locked' => false,
            'step' => 'complete',
            'checks' => $this->requirementChecks(),
            'databaseFile' => $this->databaseFilePath(),
        ]);
    }

    private function renderStep(Request $request, string $step)
    {
        if (Installation::isInstalled()) {
            return view('install.index', [
                'locked' => true,
                'step' => 'locked',
                'checks' => $this->requirementChecks(),
                'databaseFile' => $this->databaseFilePath(),
            ]);
        }

        return view('install.index', [
            'locked' => false,
            'step' => $step,
            'checks' => $this->requirementChecks(),
            'databaseFile' => $this->databaseFilePath(),
        ]);
    }

    private function requirementChecks(): array
    {
        $checks = [
            'php' => [
                'label' => 'PHP ' . self::MINIMUM_PHP_VERSION . ' or newer',
                'ok' => version_compare(PHP_VERSION, self::MINIMUM_PHP_VERSION, '>='),
                'value' => PHP_VERSION,
            ],
        ];

        foreach ($this->requiredExtensions as $extension) {
            $checks['ext_' . $extension] = [
                'label' => 'PHP extension: ' . $extension,
                'ok' => extension_loaded($extension),
                'value' => extension_loaded($extension) ? 'Enabled' : 'Missing',
            ];
        }

        foreach ($this->runtimeDirectories() as $key => $directory) {
            $checks['dir_' . $key] = [
                'label' => $directory['label'],
                'ok' => is_dir($directory['path']) && is_writable($directory['path']),
                'value' => $directory['path'],
            ];
        }

        $checks['env'] = [
            'label' => '.env can be written',
            'ok' => (file_exists(base_path('.env')) && is_writable(base_path('.env'))) || is_writable(base_path()),
            'value' => base_path('.env'),
        ];

        $checks['sql'] = [
            'label' => 'database.sql is available',
            'ok' => (bool) $this->databaseFilePath(),
            'value' => $this->databaseFilePath() ?: 'Missing',
        ];

        return $checks;
    }

    private function validateLicense(string $licenseKey, ?string $email, string $domain): array
    {
        $endpoint = env('INSTALL_LICENSE_ENDPOINT');

        if (!$endpoint) {
            return [
                'valid' => true,
                'status' => 'local-verified',
                'message' => 'License format accepted locally. Configure INSTALL_LICENSE_ENDPOINT to enforce remote verification.',
            ];
        }

        try {
            $response = Http::timeout(15)->post($endpoint, [
                'license_key' => $licenseKey,
                'email' => $email,
                'domain' => $domain,
            ]);

            if (!$response->ok()) {
                return ['valid' => false, 'status' => 'failed', 'message' => 'License server rejected the request.'];
            }

            $payload = $response->json();

            if (isset($payload['valid']) && $payload['valid']) {
                return ['valid' => true, 'status' => 'remote-verified', 'message' => $payload['message'] ?? 'License verified.'];
            }

            return ['valid' => false, 'status' => 'failed', 'message' => $payload['message'] ?? 'License key is invalid.'];
        } catch (Throwable $exception) {
            return ['valid' => false, 'status' => 'failed', 'message' => 'License verification failed: ' . $exception->getMessage()];
        }
    }

    private function connectToDatabase(array $database): PDO
    {
        $dsn = sprintf(
            'mysql:host=%s;port=%s;dbname=%s;charset=utf8mb4',
            $database['db_host'],
            $database['db_port'],
            $database['db_database']
        );

        return new PDO($dsn, $database['db_username'], $database['db_password'] ?? '', [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
            PDO::MYSQL_ATTR_MULTI_STATEMENTS => false,
        ]);
    }

    private function importSqlFile(PDO $pdo, string $path): void
    {
        $pdo->exec('SET FOREIGN_KEY_CHECKS=0');

        $handle = fopen($path, 'r');
        $statement = '';

        while (($line = fgets($handle)) !== false) {
            $trimmed = trim($line);

            if ($trimmed === '' || Str::startsWith($trimmed, ['--', '#', '/*', '*/'])) {
                continue;
            }

            $statement .= $line;

            if (Str::endsWith(rtrim($line), ';')) {
                $pdo->exec($statement);
                $statement = '';
            }
        }

        if (trim($statement) !== '') {
            $pdo->exec($statement);
        }

        fclose($handle);
        $pdo->exec('SET FOREIGN_KEY_CHECKS=1');
    }

    private function updateSettingsAfterImport(PDO $pdo, Request $request): void
    {
        $installType = count(array_filter(explode('/', trim($request->getBaseUrl(), '/')))) > 0 ? 'Sub-Folder' : 'Sub-Domain';

        try {
            $statement = $pdo->prepare('UPDATE settings SET site_address = ?, install_type = ? WHERE id = 1');
            $statement->execute([$request->root(), $installType]);
        } catch (Throwable $exception) {
            //
        }
    }

    private function databaseEnvironment(array $database): array
    {
        return [
            'DB_CONNECTION' => 'mysql',
            'DB_HOST' => $database['db_host'],
            'DB_PORT' => $database['db_port'],
            'DB_DATABASE' => $database['db_database'],
            'DB_USERNAME' => $database['db_username'],
            'DB_PASSWORD' => $database['db_password'] ?? '',
        ];
    }

    private function updateEnvironmentForPendingInstall(Request $request, array $database, array $license): void
    {
        $this->writeEnvironment(array_merge($this->databaseEnvironment($database), [
            'APP_INSTALLED' => 'false',
            'APP_KEY' => env('APP_KEY') ?: $this->generateAppKey(),
            'APP_URL' => $request->root(),
            'LICENSE_KEY' => $license['key'],
            'LICENSE_EMAIL' => $license['email'],
            'LICENSE_DOMAIN' => $license['domain'],
            'LICENSE_STATUS' => $license['status'],
            'LICENSE_VERIFIED_AT' => $license['verified_at'],
        ]));

        Artisan::call('config:clear');
    }

    private function adminEmailExists(PDO $pdo, string $email): bool
    {
        $statement = $pdo->prepare('SELECT COUNT(*) FROM admins WHERE email = ?');
        $statement->execute([$email]);

        return (int) $statement->fetchColumn() > 0;
    }

    private function createAdmin(PDO $pdo, array $data): void
    {
        $columns = $this->tableColumns($pdo, 'admins');
        $admin = [
            'firstName' => $data['first_name'],
            'lastName' => $data['last_name'],
            'email' => $data['email'],
            'email_verified_at' => now()->toDateTimeString(),
            'password' => Hash::make($data['password']),
            'phone' => $data['phone'] ?? null,
            'dashboard_style' => 'light',
            'acnt_type_active' => 'active',
            'status' => 'active',
            'type' => 'Super Admin',
            'created_at' => now()->toDateTimeString(),
            'updated_at' => now()->toDateTimeString(),
        ];

        $admin = array_intersect_key($admin, array_flip($columns));
        $fields = array_keys($admin);
        $placeholders = implode(', ', array_fill(0, count($fields), '?'));
        $sql = 'INSERT INTO admins (`' . implode('`, `', $fields) . '`) VALUES (' . $placeholders . ')';
        $statement = $pdo->prepare($sql);
        $statement->execute(array_values($admin));
    }

    private function tableColumns(PDO $pdo, string $table): array
    {
        $statement = $pdo->query('SHOW COLUMNS FROM `' . $table . '`');

        return array_map(function ($column) {
            return $column['Field'];
        }, $statement->fetchAll());
    }

    private function databaseFilePath(): ?string
    {
        foreach ([base_path('DATABASE/database.sql'), base_path('database/database.sql')] as $path) {
            if (is_readable($path)) {
                return $path;
            }
        }

        return null;
    }

    private function runtimeDirectories(): array
    {
        return [
            'storage' => ['label' => 'storage folder is writable', 'path' => storage_path()],
            'app' => ['label' => 'storage/app folder is writable', 'path' => storage_path('app')],
            'cache' => ['label' => 'storage/framework/cache folder is writable', 'path' => storage_path('framework/cache')],
            'cache_data' => ['label' => 'storage/framework/cache/data folder is writable', 'path' => storage_path('framework/cache/data')],
            'sessions' => ['label' => 'storage/framework/sessions folder is writable', 'path' => storage_path('framework/sessions')],
            'views' => ['label' => 'storage/framework/views folder is writable', 'path' => storage_path('framework/views')],
            'logs' => ['label' => 'storage/logs folder is writable', 'path' => storage_path('logs')],
            'bootstrap_cache' => ['label' => 'bootstrap/cache folder is writable', 'path' => base_path('bootstrap/cache')],
        ];
    }

    private function writeEnvironment(array $values): void
    {
        $path = base_path('.env');

        if (!file_exists($path)) {
            if (file_exists(base_path('.env.example'))) {
                copy(base_path('.env.example'), $path);
            } else {
                file_put_contents($path, '');
            }
        }

        $content = file_get_contents($path);

        foreach ($values as $key => $value) {
            $value = $this->formatEnvValue((string) $value);
            $pattern = '/^' . preg_quote($key, '/') . '=.*$/m';

            if (preg_match($pattern, $content)) {
                $content = preg_replace($pattern, $key . '=' . $value, $content);
            } else {
                $content .= PHP_EOL . $key . '=' . $value;
            }
        }

        file_put_contents($path, $content);
    }

    private function formatEnvValue(string $value): string
    {
        if ($value === '') {
            return '';
        }

        if (preg_match('/\s|#|"|\'/', $value)) {
            return '"' . str_replace('"', '\"', $value) . '"';
        }

        return $value;
    }

    private function generateAppKey(): string
    {
        return 'base64:' . base64_encode(random_bytes(32));
    }

    private function createInstallLock(): void
    {
        file_put_contents(storage_path(Installation::LOCK_FILE), now()->toDateTimeString());
    }
}
