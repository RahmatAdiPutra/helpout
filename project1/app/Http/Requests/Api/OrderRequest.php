<?php

namespace App\Http\Requests\Api;

use App\Models\Item;
use App\Models\Order;
use App\Models\Payment;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\DB;

class OrderRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'customer_id' => ['required'],
            'updated_by' => []
        ];
    }

    public function save($post, $id)
    {
        if ($id) {
            $order = Order::find($id);
        } else {
            $order = new Order();
        }
        
        foreach ($post as $field => $value) {
            $order->$field = $value;
        }
        $order->save();

        $orders = [];
        if (empty(request()->item_id) === false) {
            for ($i=0; $i < count(request()->item_id); $i++) { 
                $orders[] = [
                    'item_id' => request()->item_id[$i],
                    'price' => request()->price[$i],
                    'quantity' => request()->quantity[$i],
                    'discount' => request()->discount[$i],
                    'amount' => request()->amount[$i]
                ];
            }
            $order->items()->sync($orders);
        }

        if (empty(request()->status) === false) {
            DB::beginTransaction();
            try {
                for ($i=0; $i < count($orders); $i++) { 
                    $item = Item::find($orders[$i]['item_id']);
                    if ($item->stock < $orders[$i]['quantity']) {
                        DB::rollback();
                        return [
                            'error' => true,
                            'message' => $item->name.' insufficient stock'
                        ];
                    } else {
                        $item->stock = $item->stock - $orders[$i]['quantity'];
                        $item->save();
                    }
                }
                $payment = new Payment();
                $payment->order_id = $order->id;
                $payment->payment_method_id = request()->payment_method_id;
                $payment->card_number = request()->card_number ? request()->card_number : null;
                $payment->status = request()->status;
                $payment->due_date = request()->due_date;
                $payment->total_amount = request()->total_amount;
                $payment->updated_by = $order->updated_by;
                $payment->save();
                DB::commit();
            } catch (\Exception $e) {
                DB::rollback();
                return response(['message' => $e->getMessage()]);
            }
        }
    }
}
