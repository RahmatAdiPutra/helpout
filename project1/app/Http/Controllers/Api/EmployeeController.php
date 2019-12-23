<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\Api\EmployeeRequest;
use App\Models\Employee;
use Illuminate\Http\Request;

class EmployeeController extends Controller
{
    public function data(Request $request)
    {
        $start = $request->get('start', 0);
        $limit = $request->get('length', 10);
        $query = Employee::select('*')->with('position', 'updatedPositions', 'updatedRoles', 'updatedPermissions', 'updatedCustomers', 'updatedItemTypes', 'updatedItems', 'updatedItemHistories', 'updatedOrders', 'updatedPaymentMethods', 'updatedPayments', 'roles');

        // build order
        $order = $request->get('order');
        $sortableColumns = [
            '1' => 'position_id',
            '2' => 'id_card_number',
            '3' => 'name',
            '4' => 'gender',
            '5' => 'birthday',
            '6' => 'religion',
            '7' => 'city',
            '8' => 'address',
            '9' => 'phone_number',
            '10' => 'email',
            '11' => 'status',
            '12' => 'created_at',
            '13' => 'updated_at',
            '14' => 'updated_by'
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
            $employee = Employee::with('position', 'updatedPositions', 'updatedRoles', 'updatedPermissions', 'updatedCustomers', 'updatedItemTypes', 'updatedItems', 'updatedItemHistories', 'updatedOrders', 'updatedPaymentMethods', 'updatedPayments', 'roles')->find($request->employee);
            if ($employee) {
                return $this->responseSuccess($employee);
            }
            return $this->responseSuccess(['message' => 'Employee not found']);
        } catch (\Exception $e) {
            return $this->responseSuccess(['message' => $e->getMessage()]);
        }
    }

    public function post(EmployeeRequest $request)
    {
        try {
            if ($request->id) {
                $message = 'Employee has been updated';
            } else {
                $message = 'Employee has been created';
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
            $employee = Employee::find($request->employee);
            if ($employee) {
                $employee->delete();
                return $this->responseSuccess(['message' => 'Employee has been deleted']);
            }
            return $this->responseSuccess(['message' => 'Employee not found']);
        } catch (\Exception $e) {
            return $this->responseSuccess(['message' => $e->getMessage()]);
        }
    }
}
