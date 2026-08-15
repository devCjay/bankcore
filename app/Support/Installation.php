<?php

namespace App\Support;

use Illuminate\Support\Facades\DB;

class Installation
{
    public const LOCK_FILE = 'installed';

    public static function isInstalled(): bool
    {
        return filter_var(env('APP_INSTALLED', false), FILTER_VALIDATE_BOOLEAN)
            || file_exists(storage_path(self::LOCK_FILE));
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
}
