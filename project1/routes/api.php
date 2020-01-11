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
    'middleware' => ['role.permission'],
    'namespace' => 'Api'
],function () {
    Route::group([
        'prefix' => 'setting'
    ],function () {
        Route::get('/data/{setting}', 'SettingController@data');
    });

    Route::group([
        'prefix' => 'customer',
        'as' => 'customer.'
    ],function () {
        Route::get('/data', 'CustomerController@data')->name('data');
        Route::get('/{customer}', 'CustomerController@show')->name('show');
        Route::post('/', 'CustomerController@post')->name('post');
        Route::delete('/{customer}', 'CustomerController@destroy')->name('destroy');
    });

    Route::group([
        'prefix' => 'employee',
        'as' => 'employee.'
    ],function () {
        Route::get('/data', 'EmployeeController@data')->name('data');
        Route::get('/{employee}', 'EmployeeController@show')->name('show');
        Route::post('/', 'EmployeeController@post')->name('post');
        Route::delete('/{employee}', 'EmployeeController@destroy')->name('destroy');
    });

    Route::group([
        'prefix' => 'item',
        'as' => 'item.'
    ],function () {
        Route::get('/data', 'ItemController@data')->name('data');
        Route::get('/{item}', 'ItemController@show')->name('show');
        Route::post('/', 'ItemController@post')->name('post');
        Route::delete('/{item}', 'ItemController@destroy')->name('destroy');
    });

    Route::group([
        'prefix' => 'item-history',
        'as' => 'item-history.'
    ],function () {
        Route::get('/data', 'ItemHistoryController@data')->name('data');
        Route::get('/{itemHistory}', 'ItemHistoryController@show')->name('show');
        Route::post('/', 'ItemHistoryController@post')->name('post');
        Route::delete('/{itemHistory}', 'ItemHistoryController@destroy')->name('destroy');
    });

    Route::group([
        'prefix' => 'item-type',
        'as' => 'item-type.'
    ],function () {
        Route::get('/data', 'ItemTypeController@data')->name('data');
        Route::get('/{itemType}', 'ItemTypeController@show')->name('show');
        Route::post('/', 'ItemTypeController@post')->name('post');
        Route::delete('/{itemType}', 'ItemTypeController@destroy')->name('destroy');
    });

    Route::group([
        'prefix' => 'order',
        'as' => 'order.'
    ],function () {
        Route::get('/data', 'OrderController@data')->name('data');
        Route::get('/{order}', 'OrderController@show')->name('show');
        Route::post('/', 'OrderController@post')->name('post');
        Route::delete('/{order}', 'OrderController@destroy')->name('destroy');
    });

    Route::group([
        'prefix' => 'payment',
        'as' => 'payment.'
    ],function () {
        Route::get('/data', 'PaymentController@data')->name('data');
        Route::get('/{payment}', 'PaymentController@show')->name('show');
        Route::post('/', 'PaymentController@post')->name('post');
        Route::delete('/{payment}', 'PaymentController@destroy')->name('destroy');
    });

    Route::group([
        'prefix' => 'payment-method',
        'as' => 'payment-method.'
    ],function () {
        Route::get('/data', 'PaymentMethodController@data')->name('data');
        Route::get('/{paymentMethod}', 'PaymentMethodController@show')->name('show');
        Route::post('/', 'PaymentMethodController@post')->name('post');
        Route::delete('/{paymentMethod}', 'PaymentMethodController@destroy')->name('destroy');
    });

    Route::group([
        'prefix' => 'permission',
        'as' => 'permission.'
    ],function () {
        Route::get('/data', 'PermissionController@data')->name('data');
        Route::get('/{permission}', 'PermissionController@show')->name('show');
        Route::post('/', 'PermissionController@post')->name('post');
        Route::delete('/{permission}', 'PermissionController@destroy')->name('destroy');
    });

    Route::group([
        'prefix' => 'position',
        'as' => 'position.'
    ],function () {
        Route::get('/data', 'PositionController@data')->name('data');
        Route::get('/{position}', 'PositionController@show')->name('show');
        Route::post('/', 'PositionController@post')->name('post');
        Route::delete('/{position}', 'PositionController@destroy')->name('destroy');
    });

    Route::group([
        'prefix' => 'role',
        'as' => 'role.'
    ],function () {
        Route::get('/data', 'RoleController@data')->name('data');
        Route::get('/{role}', 'RoleController@show')->name('show');
        Route::post('/', 'RoleController@post')->name('post');
        Route::delete('/{role}', 'RoleController@destroy')->name('destroy');
    });
});