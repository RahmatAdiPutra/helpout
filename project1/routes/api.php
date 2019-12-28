<?php

// use Illuminate\Http\Request;

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

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::group([
    // 'middleware' => ['auth'],
    'namespace' => 'Api'
],function () {
    Route::group([
        'prefix' => 'setting'
    ],function () {
        Route::get('/data/{setting}', 'SettingController@data');
    });

    Route::group([
        'prefix' => 'customer'
    ],function () {
        Route::get('/data', 'CustomerController@data');
        Route::get('/{customer}', 'CustomerController@show');
        Route::post('/', 'CustomerController@post');
        Route::delete('/{customer}', 'CustomerController@destroy');
    });

    Route::group([
        'prefix' => 'employee'
    ],function () {
        Route::get('/data', 'EmployeeController@data');
        Route::get('/{employee}', 'EmployeeController@show');
        Route::post('/', 'EmployeeController@post');
        Route::delete('/{employee}', 'EmployeeController@destroy');
    });

    Route::group([
        'prefix' => 'item'
    ],function () {
        Route::get('/data', 'ItemController@data');
        Route::get('/{item}', 'ItemController@show');
        Route::post('/', 'ItemController@post');
        Route::delete('/{item}', 'ItemController@destroy');
    });

    Route::group([
        'prefix' => 'item-history'
    ],function () {
        Route::get('/data', 'ItemHistoryController@data');
        Route::get('/{itemHistory}', 'ItemHistoryController@show');
        Route::post('/', 'ItemHistoryController@post');
        Route::delete('/{itemHistory}', 'ItemHistoryController@destroy');
    });

    Route::group([
        'prefix' => 'item-type'
    ],function () {
        Route::get('/data', 'ItemTypeController@data');
        Route::get('/{itemType}', 'ItemTypeController@show');
        Route::post('/', 'ItemTypeController@post');
        Route::delete('/{itemType}', 'ItemTypeController@destroy');
    });

    Route::group([
        'prefix' => 'order'
    ],function () {
        Route::get('/data', 'OrderController@data');
        Route::get('/{order}', 'OrderController@show');
        Route::post('/', 'OrderController@post');
        Route::delete('/{order}', 'OrderController@destroy');
    });

    Route::group([
        'prefix' => 'payment'
    ],function () {
        Route::get('/data', 'PaymentController@data');
        Route::get('/{payment}', 'PaymentController@show');
        Route::post('/', 'PaymentController@post');
        Route::delete('/{payment}', 'PaymentController@destroy');
    });

    Route::group([
        'prefix' => 'payment-method'
    ],function () {
        Route::get('/data', 'PaymentMethodController@data');
        Route::get('/{paymentMethod}', 'PaymentMethodController@show');
        Route::post('/', 'PaymentMethodController@post');
        Route::delete('/{paymentMethod}', 'PaymentMethodController@destroy');
    });

    Route::group([
        'prefix' => 'permission'
    ],function () {
        Route::get('/data', 'PermissionController@data');
        Route::get('/{permission}', 'PermissionController@show');
        Route::post('/', 'PermissionController@post');
        Route::delete('/{permission}', 'PermissionController@destroy');
    });

    Route::group([
        'prefix' => 'position'
    ],function () {
        Route::get('/data', 'PositionController@data');
        Route::get('/{position}', 'PositionController@show');
        Route::post('/', 'PositionController@post');
        Route::delete('/{position}', 'PositionController@destroy');
    });

    Route::group([
        'prefix' => 'role'
    ],function () {
        Route::get('/data', 'RoleController@data');
        Route::get('/{role}', 'RoleController@show');
        Route::post('/', 'RoleController@post');
        Route::delete('/{role}', 'RoleController@destroy');
    });
});