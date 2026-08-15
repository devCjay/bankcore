<?php

namespace App\Support;

use Illuminate\Support\Facades\DB;

class Installation
{
    public const LOCK_FILE = 'installed';

    public static function isInstalled(): bool
    {
        if (!file_exists(base_path('.env'))) {
            return false;
        }

        $installed = self::envFileValue('APP_INSTALLED');

        if ($installed !== null) {
            return filter_var($installed, FILTER_VALIDATE_BOOLEAN);
        }

        return file_exists(storage_path(self::LOCK_FILE));
    }

    public static function canUseDatabase(): bool
    {
        if (!self::isInstalled()) {
            return false;
        }

        try {
            DB::connection()->getPdo();

            return true;
        } catch (\Throwable $exception) {
            return false;
        }
    }

    private static function envFileValue(string $key): ?string
    {
        $path = base_path('.env');

        if (!file_exists($path)) {
            return null;
        }

        $lines = file($path, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);

        foreach ($lines as $line) {
            $line = trim($line);

            if ($line === '' || strpos($line, '#') === 0 || strpos($line, '=') === false) {
                continue;
            }

            [$name, $value] = array_map('trim', explode('=', $line, 2));

            if ($name === $key) {
                return trim($value, "\"'");
            }
        }

        return null;
    }
}
