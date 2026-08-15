<?php

use Illuminate\Contracts\Http\Kernel;
use Illuminate\Http\Request;

define('LARAVEL_START', microtime(true));

if (file_exists(__DIR__ . '/storage/framework/maintenance.php')) {
    require __DIR__ . '/storage/framework/maintenance.php';
}

if (!file_exists(__DIR__ . '/.env')) {
    foreach (['config.php', 'routes.php', 'events.php'] as $cacheFile) {
        $cachePath = __DIR__ . '/bootstrap/cache/' . $cacheFile;

        if (file_exists($cachePath)) {
            @unlink($cachePath);
        }
    }
}

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';

$kernel = $app->make(Kernel::class);

$response = tap($kernel->handle(
    $request = Request::capture()
))->send();

$kernel->terminate($request, $response);
