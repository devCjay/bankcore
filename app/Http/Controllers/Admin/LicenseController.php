<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Str;
use Throwable;

class LicenseController extends Controller
{
    public function index(Request $request)
    {
        return view('admin.license.index', [
            'title' => 'License Manager',
            'license' => $this->licenseState($request),
        ]);
    }

    public function update(Request $request)
    {
        $data = $request->validate([
            'license_key' => ['required', 'string', 'min:12', 'max:190'],
            'license_email' => ['nullable', 'email', 'max:190'],
            'license_endpoint' => ['nullable', 'url', 'max:255'],
        ]);

        $domain = $request->getHost();
        $result = $this->verifyLicense(
            $data['license_key'],
            $data['license_email'] ?? null,
            $domain,
            $data['license_endpoint'] ?? null
        );

        if (!$result['valid']) {
            return back()->withInput()->with('message', $result['message'])->with('type', 'danger');
        }

        $this->writeEnvironment([
            'INSTALL_LICENSE_ENDPOINT' => $data['license_endpoint'] ?? '',
            'LICENSE_KEY' => $data['license_key'],
            'LICENSE_EMAIL' => $data['license_email'] ?? '',
            'LICENSE_DOMAIN' => $domain,
            'LICENSE_STATUS' => $result['status'],
            'LICENSE_VERIFIED_AT' => now()->toDateTimeString(),
        ]);

        Artisan::call('config:clear');

        return redirect()->route('admin.license.index')->with('message', $result['message'])->with('type', 'success');
    }

    public function verify(Request $request)
    {
        $licenseKey = env('LICENSE_KEY');

        if (!$licenseKey) {
            return back()->with('message', 'No license key is saved yet.')->with('type', 'danger');
        }

        $result = $this->verifyLicense(
            $licenseKey,
            env('LICENSE_EMAIL'),
            $request->getHost(),
            env('INSTALL_LICENSE_ENDPOINT')
        );

        $this->writeEnvironment([
            'LICENSE_DOMAIN' => $request->getHost(),
            'LICENSE_STATUS' => $result['status'],
            'LICENSE_VERIFIED_AT' => now()->toDateTimeString(),
        ]);

        Artisan::call('config:clear');

        return back()->with('message', $result['message'])->with('type', $result['valid'] ? 'success' : 'danger');
    }

    private function licenseState(Request $request): array
    {
        return [
            'key' => env('LICENSE_KEY'),
            'masked_key' => $this->maskLicenseKey(env('LICENSE_KEY')),
            'email' => env('LICENSE_EMAIL'),
            'domain' => env('LICENSE_DOMAIN') ?: $request->getHost(),
            'status' => env('LICENSE_STATUS') ?: 'not-verified',
            'verified_at' => env('LICENSE_VERIFIED_AT'),
            'endpoint' => env('INSTALL_LICENSE_ENDPOINT'),
            'current_domain' => $request->getHost(),
        ];
    }

    private function verifyLicense(string $licenseKey, ?string $email, string $domain, ?string $endpoint): array
    {
        if (!$endpoint) {
            return [
                'valid' => true,
                'status' => 'local-verified',
                'message' => 'License saved locally. Add a license endpoint to enforce remote verification.',
            ];
        }

        try {
            $response = Http::timeout(15)->post($endpoint, [
                'license_key' => $licenseKey,
                'email' => $email,
                'domain' => $domain,
            ]);

            if (!$response->ok()) {
                return [
                    'valid' => false,
                    'status' => 'failed',
                    'message' => 'License server returned HTTP ' . $response->status() . '.',
                ];
            }

            $payload = $response->json();

            if (isset($payload['valid']) && $payload['valid']) {
                return [
                    'valid' => true,
                    'status' => 'remote-verified',
                    'message' => $payload['message'] ?? 'License verified successfully.',
                ];
            }

            return [
                'valid' => false,
                'status' => 'failed',
                'message' => $payload['message'] ?? 'License key is invalid.',
            ];
        } catch (Throwable $exception) {
            return [
                'valid' => false,
                'status' => 'failed',
                'message' => 'License verification failed: ' . $exception->getMessage(),
            ];
        }
    }

    private function maskLicenseKey(?string $licenseKey): string
    {
        if (!$licenseKey) {
            return 'Not configured';
        }

        if (strlen($licenseKey) <= 8) {
            return str_repeat('*', strlen($licenseKey));
        }

        return substr($licenseKey, 0, 4) . str_repeat('*', max(strlen($licenseKey) - 8, 4)) . substr($licenseKey, -4);
    }

    private function writeEnvironment(array $values): void
    {
        $path = base_path('.env');

        if (!file_exists($path)) {
            file_put_contents($path, '');
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
}
