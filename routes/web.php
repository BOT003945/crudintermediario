<?php
use App\Models\Sucursales;

use Illuminate\Support\Facades\Route;
use App\Http\Livewire\Deptos;
use App\Http\Livewire\Doctores;
use App\Http\Controllers\EmpresaController;
use App\Http\Livewire\Estudios;
use App\Http\Controllers\DetalleGrupoAntibioticoController;
use App\Http\Controllers\FormatoController;
use App\Http\Controllers\PacienteController;
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

Route::get('/', function () {
    $sucursales = Sucursales::all();
    return view('auth.login', compact('sucursales'));
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});
//Route Hooks - Do not delete//
	Route::view('sucursales', 'livewire.sucursales.index')->middleware('auth');
	Route::view('deptos', 'livewire.deptos.index')->middleware('auth');
    Route::get('/deptos-pdf', [Deptos::class, 'reportePDF']);
    
    Route::view('doctores', 'livewire.doctores.index')->middleware('auth');
    Route::get('/doctores-pdf', [Doctores::class, 'reportePDF']);

	Route::resource('empresas', 'App\Http\Controllers\EmpresaController');
    Route::get('/empresas-pdf', [EmpresaController::class, 'reportePDF']);

	//Route::view('pacientes', 'livewire.pacientes.index')->middleware('auth');
    Route::resource('pacientes', 'App\Http\Controllers\PacienteController');
    Route::post('pacientes.edit', [PacienteController::class, 'edit']);
    Route::get('/pacientes-pdf', [PacienteController::class, 'reportePDF']);

	//Route::view('/estudios', 'livewire.estudios.index')->middleware('auth');
    //Route::get('/estudios-pdf', [Estudios::class, 'reportePDF']);

    Route::View('solicitudes', 'livewire.solicitudes.index')->middleware('auth');
    Route::View('pacientes2', 'livewire.pacientes2.index')->middleware('auth');

/*     Route::get('solicitudes', [Solicitudes::class])->middleware('auth');*/
// Route::get('/clear-cache', function(){
//     $run = Artisan::call('config:clear');
//     $run = Artisan::call('cache:clear');
//     $run = Artisan::call('config:cache');
//     return 'FINISHED';
// });

Route::resource('bacterias', 'App\Http\Controllers\BacteriaController')->middleware('auth');
Route::resource('antibioticos', 'App\Http\Controllers\AntibioticoController')->middleware('auth');
Route::resource('grupoantibioticos', 'App\Http\Controllers\GrupoAntibioticoController')->middleware('auth');
Route::resource('formatos', 'App\Http\Controllers\FormatoController')->middleware('auth');
Route::resource('metodos', 'App\Http\Controllers\MetodoController')->middleware('auth');

Route::resource('detallegrupoantibioticos', DetalleGrupoAntibioticoController::class)->middleware('auth');
Route::resource('pruebas', 'App\Http\Controllers\PruebaController')->middleware('auth');
Route::resource('valores', 'App\Http\Controllers\ValorController')->middleware('auth');