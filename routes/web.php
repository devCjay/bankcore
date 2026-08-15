<?php

use App\Http\Controllers\Admin\ClearCacheController;
use App\Http\Controllers\InstallController;
use Illuminate\Support\Facades\Route;
use App\Models\Settings;
use Laravel\Fortify\Http\Controllers\NewPasswordController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::prefix('install')->name('install.')->group(function () {
	Route::get('/', [InstallController::class, 'index'])->name('index');
	Route::get('/requirements', [InstallController::class, 'requirements'])->name('requirements');
	Route::get('/license', [InstallController::class, 'license'])->name('license');
	Route::post('/license', [InstallController::class, 'verifyLicense'])->name('license.verify');
	Route::get('/database', [InstallController::class, 'database'])->name('database');
	Route::post('/database', [InstallController::class, 'saveDatabase'])->name('database.save');
	Route::get('/import', [InstallController::class, 'import'])->name('import');
	Route::post('/import', [InstallController::class, 'runImport'])->name('import.run');
	Route::get('/complete', [InstallController::class, 'complete'])->name('complete');
});

require __DIR__ . '/home.php';
require __DIR__ . '/admin.php';
require __DIR__ . '/user.php';
require __DIR__ . '/botman.php';

//activate and deactivate Online Trader
Route::any('/activate', function () {
	return view('activate.index', [
		'settings' => Settings::where('id', '1')->first(),
	]);
});

Route::get('/offline', function () {
    return view('vendor.laravelpwa.offline');
});

Route::get('register-license', [ClearCacheController::class, 'saveLicense']);

Route::any('/revoke', function () {
	return view('revoke.index');
});

Route::post('/reset-password', [NewPasswordController::class, 'store'])
	->middleware(['guest:' . config('fortify.guard')])
	->name('password.update');
