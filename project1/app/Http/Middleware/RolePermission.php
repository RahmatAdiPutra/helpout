<?php

namespace App\Http\Middleware;

use App\Models\Employee;
use Closure;
use Illuminate\Support\Str;

class RolePermission
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $token = $request->header('token') ? $request->header('token') : $request->get('token');
        if (empty($token)) {
            // ridirect to page cannot access
            abort(403, 'Access denied');
        }

        $user = Employee::with('roles')->where('token', $token)->first();
        if (empty($user)) {
            // ridirect to page cannot access
            abort(403, 'Access denied');
        }

        $permission = data_get($user->roles->toArray(), '*.permissions');
        $permission = data_get($permission, '*.*');
        $permission = collect($permission)->pluck('name')->unique();

        $x = $request->route()->getName();
        $y = Str::replaceLast(Str::after($x, '.'), '*', $x);

        if (!($permission->contains($x) || $permission->contains($y))){
            // ridirect to page cannot access
            abort(403, 'Access denied');
        }

        $request->merge(['updated_by' => $user->id]);

        return $next($request);
    }
}
