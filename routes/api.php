<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::group(['prefix' => 'auth'], function () {
    Route::post('/login', 'AuthController@login');
    Route::post('/register', 'AuthController@register');
    
    Route::group(['middleware' => 'auth:api'], function () {
        Route::get('/logout', 'AuthController@logout');
        Route::get('/info', 'AuthController@user');
        
        // Transaction
        Route::get('/transaction', 'TransactionController@index');
        Route::get('/transaction/{transaction}', 'TransactionController@show');
        Route::post('/transaction', 'TransactionController@store');
        Route::put('/transaction/{transaction}', 'TransactionController@update');
        Route::delete('/transaction/{transaction}', 'TransactionController@destroy');
    });
});
