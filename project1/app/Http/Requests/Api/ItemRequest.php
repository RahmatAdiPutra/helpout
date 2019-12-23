<?php

namespace App\Http\Requests\Api;

use App\Models\Item;
use Illuminate\Foundation\Http\FormRequest;

class ItemRequest extends FormRequest
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
            'item_type_id' => ['required'],
            'name' => ['required'],
            'price' => ['required'],
            'stock' => ['required'],
            'discount' => ['required'],
            'description' => ['required'],
            'updated_by' => []
        ];
    }

    public function save($post, $id)
    {
        if ($id) {
            $item = Item::find($id);
        } else {
            $item = new Item();
        }
        
        foreach ($post as $field => $value) {
            $item->$field = $value;
        }
        $item->save();
    }
}
