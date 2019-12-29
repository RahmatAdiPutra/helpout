<?php

namespace App\Http\Requests\Api;

use App\Models\Item;
use App\Models\Order;
use App\Models\Payment;
use App\Models\Setting;
use Illuminate\Foundation\Http\FormRequest;

class PaymentRequest extends FormRequest
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
            'payment_method_id' => ['required'],
            'order_id' => ['required'],
            'card_number' => [],
            'due_date' => ['required'],
            'total_amount' => ['required'],
            'status' => ['required'],
            'updated_by' => []
        ];
    }

    public function save($post, $id)
    {
        if ($id) {
            $payment = Payment::find($id);
        } else {
            $payment = new Payment();
        }
        
        foreach ($post as $field => $value) {
            $payment->$field = $value;
        }
        $payment->save();

        $order = Order::find($payment->order_id);
        
        if (!in_array($payment->status, Setting::get('payment')['allow'])) {
            foreach ($order->items as $key => $value) {
                $item = Item::find($value->pivot->item_id);
                $item->stock = $item->stock + $value->pivot->quantity;
                $item->save();
            }
        }
    }
}
