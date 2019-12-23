<?php

namespace App\Http\Requests\Api;

use App\Models\Permission;
use Illuminate\Foundation\Http\FormRequest;

class PermissionRequest extends FormRequest
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
            $permission = Permission::find($id);
        } else {
            $permission = new Permission();
        }
        
        foreach ($post as $field => $value) {
            $permission->$field = $value;
        }
        $permission->save();
    }
}
