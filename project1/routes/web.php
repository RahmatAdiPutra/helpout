<?php

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


// Auth::loginUsingId(1, true);

// Auth::routes();

Route::get('/', function () {
    return view('ui.dashboard.index');
});

Route::group([
    'prefix' => 'test',
    'as' => 'test.',
],function () {
    Route::get('/', 'TestController@index')->name('index');
});

Route::group([
    // 'middleware' => ['auth'],
    'namespace' => 'Web'
],function () {
    Route::group([
        'prefix' => 'customer',
        'as' => 'customer.',
    ],function () {
        Route::get('/', 'CustomerController@index')->name('index');
    });

    Route::group([
        'prefix' => 'employee',
        'as' => 'employee.',
    ],function () {
        Route::get('/', 'EmployeeController@index')->name('index');
    });

    Route::group([
        'prefix' => 'item',
        'as' => 'item.',
    ],function () {
        Route::get('/', 'ItemController@index')->name('index');
    });

    Route::group([
        'prefix' => 'item-history',
        'as' => 'item-history.',
    ],function () {
        Route::get('/', 'ItemHistoryController@index')->name('index');
    });

    Route::group([
        'prefix' => 'item-type',
        'as' => 'item-type.',
    ],function () {
        Route::get('/', 'ItemTypeController@index')->name('index');
    });

    Route::group([
        'prefix' => 'order',
        'as' => 'order.',
    ],function () {
        Route::get('/', 'OrderController@index')->name('index');
    });

    Route::group([
        'prefix' => 'payment',
        'as' => 'payment.',
    ],function () {
        Route::get('/', 'PaymentController@index')->name('index');
    });

    Route::group([
        'prefix' => 'payment-method',
        'as' => 'payment-method.',
    ],function () {
        Route::get('/', 'PaymentMethodController@index')->name('index');
    });

    Route::group([
        'prefix' => 'permission',
        'as' => 'permission.',
    ],function () {
        Route::get('/', 'PermissionController@index')->name('index');
    });

    Route::group([
        'prefix' => 'position',
        'as' => 'position.',
    ],function () {
        Route::get('/', 'PositionController@index')->name('index');
    });

    Route::group([
        'prefix' => 'role',
        'as' => 'role.',
    ],function () {
        Route::get('/', 'RoleController@index')->name('index');
    });
});
