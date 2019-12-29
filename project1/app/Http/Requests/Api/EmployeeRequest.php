<?php

namespace App\Http\Requests\Api;

use App\Models\Employee;
use Illuminate\Foundation\Http\FormRequest;

class EmployeeRequest extends FormRequest
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
            'position_id' => ['required'],
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
            'status' => ['required']
        ];
    }

    public function save($post, $id)
    {
        if ($id) {
            $employee = Employee::find($id);
        } else {
            $employee = new Employee();
        }

        foreach ($post as $field => $value) {
            $employee->$field = $value;
        }
        $employee->save();

        $roles = [];
        if (empty(request()->role_id) === false) {
            for ($i=0; $i < count(request()->role_id); $i++) {
                $roles[] = [
                    'role_id' => request()->role_id[$i]
                ];
            }
            $employee->roles()->sync($roles);
        }
    }
}
