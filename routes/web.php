<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PlantController;
use App\Models\Plant;
use Illuminate\Http\Request;
use GuzzleHttp\Client;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/biblioteca', function () {

    $response = Illuminate\Support\Facades\Http::get('https://trefle.io/api/v1/plants/search?token=zvylt9H6vvyKX_rMJ2aEHGTHL4Pn2FWrUCLSuHGXDJ0&q=rosa');

    $resposta = Illuminate\Support\Facades\Http::get('https://trefle.io/api/v1/plants/search?token=zvylt9H6vvyKX_rMJ2aEHGTHL4Pn2FWrUCLSuHGXDJ0&q=coco');

    $plants = $response->json()['data'];

    $plants = array_merge($plants, $resposta->json()['data']);

    $paginatedPlants = Plant::paginate(10);

    return view('florall.biblioteca', compact('paginatedPlants'));
});

Route::get('/pesquisar', function (Request $request) {
    $termo = $request->input('termo');

    $plants = \App\Models\Plant::where('nomecomum', 'LIKE', "%{$termo}%")->get();

    return view('florall.pesquisa', compact('plants', 'termo'));
})->name('pesquisar');


Route::get('/plants/{plants}/edit/',[PlantController::class, 'edit']);


Route::get('/historico',[PlantController::class, 'historico']);

//Route::post('/plants/update/{plants}/',[PlantController::class, 'update']);

Route::get('/', function () {
    return view('florall.inicio');
});

Route::get('/minhasplantas', function () {
    return view('florall.minhasplantas');
});

Route::get('/duvidas', function () {
    return view('florall.duvidas');
});

Route::get('/index', [PlantController::class, 'index'])->name('plant.index');
Route::post('/identify', [PlantController::class, 'identify'])->name('plant.identify');


Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
