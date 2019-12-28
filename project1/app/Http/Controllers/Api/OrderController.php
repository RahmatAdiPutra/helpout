<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\Api\OrderRequest;
use App\Models\Customer;
use App\Models\Order;
use App\Models\Payment;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    public function data(Request $request)
    {
        $start = $request->get('start', 0);
        $limit = $request->get('length', 10);
        $query = Order::select('*')->with('updatedBy', 'customer', 'items', 'payment');

        // build order
        $order = $request->get('order');
        $sortableColumns = [
            '1' => 'customer_id'
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
            $q1 = Customer::select('id')->where('name', 'like', $q)->pluck('id');
            $query->whereIn('customer_id', $q1);
            if ($query->get()->isEmpty()) {
                $q2 = Payment::select('order_id')->where('status', 'like', $q)->pluck('order_id');
                $query = Order::select('*')->with('updatedBy', 'customer', 'items', 'payment');
                $query->whereIn('id', $q2);
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
            $order = Order::with('updatedBy', 'customer', 'items', 'payment')->find($request->order);
            if ($order) {        
                return $this->responseSuccess($order);
            }
            return $this->responseSuccess(['message' => 'Order not found']);
        } catch (\Exception $e) {
            return $this->responseSuccess(['message' => $e->getMessage()]);
        }
    }

    public function post(OrderRequest $request)
    {
        try {
            if ($request->id) {
                $message = 'Order has been updated';
            } else {
                $message = 'Order has been created';
            }

            $check = $request->save($request->only(array_keys($request->rules())), $request->id);
            if ($check['error']) {
                $message = $check['message'];
            }

            return $this->responseSuccess(['message' => $message]);
        } catch (\Exception $e) {
            return $this->responseSuccess(['message' => $e->getMessage()]);
        }
    }

    public function destroy(Request $request)
    {
        try {
            $order = Order::find($request->order);
            if ($order) {        
                $order->delete();
                return $this->responseSuccess(['message' => 'Order has been deleted']);
            }
            return $this->responseSuccess(['message' => 'Order not found']);
        } catch (\Exception $e) {
            return $this->responseSuccess(['message' => $e->getMessage()]);
        }
    }
}
