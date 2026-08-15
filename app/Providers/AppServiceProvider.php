<?php

namespace App\Providers;

use App\Support\Installation;
use League\Flysystem\Filesystem;
use League\Flysystem\Sftp\SftpAdapter;
use Illuminate\Support\Facades\View;
use App\Models\Settings;
use App\Models\SettingsCont;
use App\Models\TermsPrivacy;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Storage as FacadesStorage;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $this->ensureRuntimeDirectories();

        FacadesStorage::extend('sftp', function ($app, $config) {
            return new Filesystem(new SftpAdapter($config));
        });

        Paginator::useBootstrap();

        if (!Installation::canUseDatabase()) {
            return;
        }

        // Sharing settings with all view
        try {
            $settings = Settings::where('id', '1')->first();
            $terms =  TermsPrivacy::find(1);
            $moreset =  SettingsCont::find(1);
        } catch (\Throwable $exception) {
            return;
        }

        if (!$settings) {
            return;
        }

        View::share('settings', $settings);
        View::share('terms', $terms);
        View::share('moresettings', $moreset);
        View::share('mod', $settings->modules);
    }

    private function ensureRuntimeDirectories(): void
    {
        $directories = [
            storage_path('app'),
            storage_path('app/public'),
            storage_path('app/livewire-tmp'),
            storage_path('framework'),
            storage_path('framework/cache'),
            storage_path('framework/cache/data'),
            storage_path('framework/sessions'),
            storage_path('framework/testing'),
            storage_path('framework/views'),
            storage_path('logs'),
            base_path('bootstrap/cache'),
        ];

        foreach ($directories as $directory) {
            if (!is_dir($directory)) {
                @mkdir($directory, 0755, true);
            }
        }
    }
}
