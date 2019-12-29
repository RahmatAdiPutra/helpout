<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\Api\PermissionRequest;
use App\Models\Permission;
use Illuminate\Http\Request;

class PermissionController extends Controller
{
    public function data(Request $request)
    {
        $start = $request->get('start', 0);
        $limit = $request->get('length', 10);
        $query = Permission::select('*')->with('updatedBy', 'roles');

        // build order
        $order = $request->get('order');
        $sortableColumns = [
            '1' => 'name',
            '2' => 'created_at',
            '3' => 'updated_at',
            '4' => 'updated_by'
        ];

        if (isset($sortableColumns[$order[0]['column']])) {
            if (isset($sortableColumns[$order[0]['column']])) {
                $query->orderBy($sortableColumns[$order[0]['column']], $order[0]['dir']);
            }
        } else {
            $query->orderBy('updated_at', 'desc');
        }

        $searchTerm = $request->get('search');
        if (empty($searchTerm['value']) === false) {
            $q = '%' . str_replace(' ', '%', trim($searchTerm['value'])) . '%';
            $query->where('name', 'like', $q);
        } else {
            if (empty($searchTerm) === false) {
                $q = '%' . str_replace(' ', '%', trim($searchTerm)) . '%';
                $query->where('name', 'like', $q);
            }
        }

        // for get data total and last page,
        $paginate = $query->skip($start)
            ->paginate($limit)
            ->toArray();

        $paginateData['total'] = $paginate['total'];
        $paginateData['last_page'] = $paginate['last_page'];

        $paginateData['from'] = $start;
        $paginateData['to'] = $limit + ($start - 1);
        $paginateData['per_page'] = $limit;

        $paginateData['data'] = $query->skip($start)
            ->take($limit)
            ->get();

        return $this->responseSuccess($paginateData);
    }

    public function show(Request $request)
    {
        try {
            $permission = Permission::with('updatedBy', 'roles')->find($request->permission);
            if ($permission) {
                return $this->responseSuccess($permission);
            }
            return $this->responseSuccess(['message' => 'Permission not found']);
        } catch (\Exception $e) {
            return $this->responseSuccess(['message' => $e->getMessage()]);
        }
    }

    public function post(PermissionRequest $request)
    {
        try {
            if ($request->id) {
                $message = 'Permission has been updated';
            } else {
                $message = 'Permission has been created';
            }

            $request->save($request->only(array_keys($request->rules())), $request->id);

            return $this->responseSuccess(['message' => $message]);
        } catch (\Exception $e) {
            return $this->responseSuccess(['message' => $e->getMessage()]);
        }
    }

    public function destroy(Request $request)
    {
        try {
            $permission = Permission::find($request->permission);
            if ($permission) {
                $permission->delete();
                return $this->responseSuccess(['message' => 'Permission has been deleted']);
            }
            return $this->responseSuccess(['message' => 'Permission not found']);
        } catch (\Exception $e) {
            return $this->responseSuccess(['message' => $e->getMessage()]);
        }
    }
}
