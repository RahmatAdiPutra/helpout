<?php

namespace App\Http\Requests\Api;

use App\Models\ItemType;
use Illuminate\Foundation\Http\FormRequest;

class ItemTypeRequest extends FormRequest
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
            $itemType = ItemType::find($id);
        } else {
            $itemType = new ItemType();
        }
        
        foreach ($post as $field => $value) {
            $itemType->$field = $value;
        }
        $itemType->save();
    }
}
