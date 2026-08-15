<?php

namespace App\Http\Middleware;

use App\Support\Installation;
use Closure;
use Illuminate\Http\Request;

class EnsureAppIsInstalled
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        if (Installation::isInstalled() || $this->isInstallerOrAssetRequest($request)) {
            return $next($request);
        }

        return redirect()->route('install.index');
    }

    private function isInstallerOrAssetRequest(Request $request): bool
    {
        return $request->is(
            'install',
            'install/*',
            'css/*',
            'js/*',
            'images/*',
            'img/*',
            'fonts/*',
            'vendor/*',
            'temp/*',
            'storage/*',
            'favicon.ico',
            'manifest.json',
            'offline',
            'livewire/*'
        );
    }
}
