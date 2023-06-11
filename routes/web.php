<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\SongController;
use App\Http\Controllers\Auth\LoginController;
use Illuminate\Support\Facades\Route;

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



Route::get('/login', [LoginController::class, 'showLoginForm'])->name('login');

Route::prefix('admin')->group(function(){
    Route::get('songs', [AdminController::class, 'index']);
    Route::get('songs/create', [AdminController::class, 'create'])->name('create');
    Route::post('songs', [AdminController::class, 'store'])->name('songs.store');
    Route::get('songs/{id}', [AdminController::class, 'show'])->name('show');
    Route::get('songs/{id}/edit', [AdminController::class, 'edit'])->name('edit');
    Route::put('songs/{id}', [AdminController::class, 'update'])->name('update');
    Route::delete('songs/{id}/delete', [AdminController::class, 'destroy'])->name('delete');
});

Route::get('/', [SongController::class, 'index'])->name('songs');
Route::get('/songs', [SongController::class, 'index'])->name('songs');

Route::get('/songs/{id}', [SongController::class, 'show']);
Route::get('/songs', [SongController::class, 'search'])->name('songs.search');

// Route::get('/music/create', [SongController::class, 'create'])->name('create');
