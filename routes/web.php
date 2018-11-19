<?php
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ThirdPartyGameController;

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

Auth::routes();

Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('/home', [HomeController::class, 'index'])->name('home');
Route::get('/game/{id}', [HomeController::class, 'show'])->name('game');
Route::get('/edit/{id}', [ThirdPartyGameController::class, 'edit'])->name('edit');
Route::post('/addGame', [ThirdPartyGameController::class, 'store'])->name('post');
Route::post('/editGame', [ThirdPartyGameController::class, 'update'])->name('update');
