<?php

namespace App\Http\Requests\Api;

use App\Models\Order;
use Illuminate\Foundation\Http\FormRequest;

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
    }
}
