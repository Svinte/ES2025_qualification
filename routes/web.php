<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\MediaController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\OrderController;

Route::get('/', [ProductController::class, 'index']);

Route::prefix('admin')->group(function ()
{
    Route::get('/', [AdminController::class, 'dashboard']);

    Route::get('/order/{order}', [Ordercontroller::class, 'edit']);
});

Route::get('images/{folder}/{path}', [MediaController::class, 'image']);