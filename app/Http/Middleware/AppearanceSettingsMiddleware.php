<?php

namespace App\Http\Middleware;

use App\Support\Installation;
use Closure;
use Illuminate\Http\Request;
use App\Models\AppearanceSettings;

class AppearanceSettingsMiddleware
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
        if (Installation::canUseDatabase()) {
            try {
                // Get appearance settings
                $appearanceSettings = AppearanceSettings::first();

                // Share settings with all views
                view()->share('appearanceSettings', $appearanceSettings);
            } catch (\Throwable $exception) {
                //
            }
        }
        
        return $next($request);
    }
} 
