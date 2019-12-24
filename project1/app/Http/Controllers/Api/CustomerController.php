<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\Api\CustomerRequest;
use App\Models\Customer;
use App\Models\Setting;
use Illuminate\Http\Request;

class CustomerController extends Controller
{
    public function data(Request $request)
    {
        $start = $request->get('start', 0);
        $limit = $request->get('length', 10);
        $query = Customer::select('*')->with('updatedBy', 'orders')->whereIn('status', Setting::get('customer')['allow']);

        // build order
        $order = $request->get('order');
        $sortableColumns = [
            '1' => 'id_card_number',
            '2' => 'name',
            '3' => 'gender',
            '4' => 'birthday',
            '5' => 'religion',
            '6' => 'city',
            '7' => 'address',
            '8' => 'phone_number',
            '9' => 'email',
            '10' => 'status',
            '11' => 'created_at',
            '12' => 'updated_at',
            '13' => 'updated_by'
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
            $customer = Customer::with('updatedBy', 'orders')->find($request->customer);
            if ($customer) {
                return $this->responseSuccess($customer);
            }
            return $this->responseSuccess(['message' => 'Customer not found']);
        } catch (\Exception $e) {
            return $this->responseSuccess(['message' => $e->getMessage()]);
        }
    }

    public function post(CustomerRequest $request)
    {
        try {
            if ($request->id) {
                $message = 'Customer has been updated';
            } else {
                $message = 'Customer has been created';
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
            $customer = Customer::find($request->customer);
            if ($customer) {
                $customer->delete();
                return $this->responseSuccess(['message' => 'Customer has been deleted']);
            }
            return $this->responseSuccess(['message' => 'Customer not found']);
        } catch (\Exception $e) {
            return $this->responseSuccess(['message' => $e->getMessage()]);
        }
    }
}
