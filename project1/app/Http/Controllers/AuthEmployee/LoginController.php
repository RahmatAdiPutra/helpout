<?php

namespace App\Http\Controllers\AuthEmployee;

use App\Http\Controllers\Controller;
use App\Models\Employee;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest:employee')->except('logout');
    }

	/**
	 * Get the needed authorization credentials from the request.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return array
	 */
	protected function credentials(Request $request) {
		return ['email' => $request->{$this->username()}, 'password' => $request->password, 'status' => '1'];
	}

	/**
	 * Send the response after the user was authenticated.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	protected function sendLoginResponse(Request $request) {
		$request->session()->regenerate();

		$this->clearLoginAttempts($request);

		// return redirect('/');

		$data = [];
		
		$user = Employee::where($this->username(), $request->{$this->username()})->first();
		$user->token = Str::random(20);
		$user->save();

		$permission = data_get($user->roles->toArray(), '*.permissions');
        $permission = data_get($permission, '*.*');
		$permission = collect($permission)->pluck('name')->unique();

		$menu = $permission->map(function($value, $key) {
			return Str::before($value, '.');
		});
		$menu = collect($menu)->unique()->sort();
		
		$data['token'] = $user->token;
		$data['menu'] = $menu->values()->all();
		$data['permission'] = $permission;

		return $this->responseSuccess($data);
	}

	/**
	 * Show the application's login form.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function showLoginForm() {
		return view('ui.auth.employee.login');
	}

	/**
	 * Log the user out of the application.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function logout(Request $request) {
		$this->guard()->logout();

		$request->session()->invalidate();

		// return $this->loggedOut($request) ?: redirect('/employee-login');

		$user = Employee::where('token', $request->header('token'))->first();
		$user->token = '';
		$user->save();

		$this->loggedOut($request);

		return $this->responseSuccess();
	}

	/**
	 * Get the guard to be used during authentication.
	 *
	 * @return \Illuminate\Contracts\Auth\StatefulGuard
	 */
	protected function guard() {
		return Auth::guard('employee');
	}
}
