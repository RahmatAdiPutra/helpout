<?php

namespace App\Http\Requests\Api;

use App\Models\Role;
use Illuminate\Foundation\Http\FormRequest;

class RoleRequest extends FormRequest
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
            $role = Role::find($id);
        } else {
            $role = new Role();
        }

        foreach ($post as $field => $value) {
            $role->$field = $value;
        }
        $role->save();

        $permissions = [];
        if (empty(request()->permission_id) === false) {
            for ($i=0; $i < count(request()->permission_id); $i++) {
                $permissions[] = [
                    'permission_id' => request()->permission_id[$i]
                ];
            }
            $role->permissions()->sync($permissions);
        }
    }
}
