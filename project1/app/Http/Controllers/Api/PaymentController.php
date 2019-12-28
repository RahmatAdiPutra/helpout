<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\Api\PaymentRequest;
use App\Models\Customer;
use App\Models\Order;
use App\Models\Payment;
use Illuminate\Http\Request;

class PaymentController extends Controller
{
    public function data(Request $request)
    {
        $start = $request->get('start', 0);
        $limit = $request->get('length', 10);
        $query = Payment::select('*')->with('updatedBy', 'paymentMethod', 'order');

        // build order
        $order = $request->get('order');
        $sortableColumns = [
            '1' => 'payment_method_id',
            '2' => 'order_id',
            '3' => 'card_number',
            '4' => 'due_date',
            '5' => 'total_amount',
            '6' => 'status'
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
            $q2 = Order::select('id')->whereIn('customer_id', $q1)->pluck('id');
            $query->whereIn('order_id', $q2);
            if ($query->get()->isEmpty()) {
                $query = Payment::select('*')->with('updatedBy', 'paymentMethod', 'order');
                $query->where('status', 'like', $q);
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
            $payment = Payment::with('updatedBy', 'paymentMethod', 'order')->find($request->payment);
            if ($payment) {
                return $this->responseSuccess($payment);
            }
            return $this->responseSuccess(['message' => 'Payment not found']);
        } catch (\Exception $e) {
            return $this->responseSuccess(['message' => $e->getMessage()]);
        }
    }

    public function post(PaymentRequest $request)
    {
        try {
            if ($request->id) {
                $message = 'Payment has been updated';
            } else {
                $message = 'Payment has been created';
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
            $payment = Payment::find($request->payment);
            if ($payment) {
                $payment->delete();
                return $this->responseSuccess(['message' => 'Payment has been deleted']);
            }
            return $this->responseSuccess(['message' => 'Payment not found']);
        } catch (\Exception $e) {
            return $this->responseSuccess(['message' => $e->getMessage()]);
        }
    }
}
