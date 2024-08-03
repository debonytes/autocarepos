<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('auth/login');
});

Auth::routes();

Route::get('/dashboard', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::resource('clients', App\Http\Controllers\ClientController::class);

Route::resource('products', App\Http\Controllers\ProductController::class);

Route::resource('invoices', App\Http\Controllers\ReceiptController::class);