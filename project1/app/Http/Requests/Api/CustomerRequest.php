<?php

namespace App\Http\Requests\Api;

use App\Models\Customer;
use Illuminate\Foundation\Http\FormRequest;

class CustomerRequest extends FormRequest
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
            'id_card_number' => ['required'],
            'name' => ['required'],
            'gender' => ['required'],
            'birthday' => ['required'],
            'religion' => ['required'],
            'city' => ['required'],
            'address' => ['required'],
            'phone_number' => ['required'],
            'email' => ['required'],
            'password' => [],
            'status' => ['required'],
            'updated_by' => []
        ];
    }

    public function save($post, $id)
    {
        if ($id) {
            $customer = Customer::find($id);
        } else {
            $customer = new Customer();
        }
        
        foreach ($post as $field => $value) {
            $customer->$field = $value;
        }
        $customer->save();
    }
}
