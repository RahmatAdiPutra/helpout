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

// Route::get('/home', function () {
//     return view('home');
// });

Route::group([
    'prefix' => 'test',
    'as' => 'test.',
],function () {
    Route::get('/', 'TestController@index')->name('index');
});

Route::group([
    'namespace' => 'AuthEmployee',
    'as' => 'employee.'
],function () {
    Route::group([
        'middleware' => ['auth:employee']
    ],function () {
        Route::get('employee-register', 'RegisterController@showRegistrationForm')->name('register');
        Route::post('employee-register', 'RegisterController@register');
    });

    Route::get('employee-login', 'LoginController@showLoginForm')->name('login');
    Route::post('employee-login', 'LoginController@login');
    Route::post('employee-logout', 'LoginController@logout')->name('logout');

    Route::get('employee-verify', 'RegisterController@verify')->name('verify');
    Route::get('employee-verify/{email}/{remember_token}', 'RegisterController@sendEmailDone')->name('send');

    Route::get('employee-password/reset', 'ForgotPasswordController@showLinkRequestForm')->name('password.request');
    Route::post('employee-password/email', 'ForgotPasswordController@sendResetLinkEmail')->name('password.email');
    Route::get('employee-password/reset/{token}', 'ResetPasswordController@showResetForm')->name('password.reset');
    Route::post('employee-password/reset', 'ResetPasswordController@reset')->name('password.update');
});

Route::group([
    'middleware' => ['auth:employee'],
    'namespace' => 'Web'
],function () {
    Route::get('/', function () {
        return view('ui.dashboard.index');
    });

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
