<?php

namespace App\Http\Requests\Api;

use App\Models\PaymentMethod;
use Illuminate\Foundation\Http\FormRequest;

class PaymentMethodRequest extends FormRequest
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
            'name' => ['required'],
            'updated_by' => []
        ];
    }

    public function save($post, $id)
    {
        if ($id) {
            $paymentMethod = PaymentMethod::find($id);
        } else {
            $paymentMethod = new PaymentMethod();
        }
        
        foreach ($post as $field => $value) {
            $paymentMethod->$field = $value;
        }
        $paymentMethod->save();
    }
}
