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
Auth::routes(['verify' => true]);


Route::middleware(['cors', 'json.response', 'auth:api'])->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['middleware' => ['cors', 'json.response']], function () {

    Route::post('/login', 'App\Http\Controllers\Auth\ApiAuthController@login')->name('login.api');
    Route::post('/register', 'App\Http\Controllers\Auth\ApiAuthController@register')->name('register.api');


});

Route::group(['middleware' => ['auth:sanctum']], function () {

    Route::post('/vehicles', 'App\Http\Controllers\VehicleController@getActiveVehicleList')->name('view.vehicles');
    Route::post('/vehicle/logcount/{id}', 'App\Http\Controllers\VehicleLogController@getVehicleLogCount')->name('logcount.vehicle');
    Route::get('/vehicle/lastlog/{id}', 'App\Http\Controllers\VehicleLogController@getVehicleLastLogInfo')->name('lastlog.vehicle');

});