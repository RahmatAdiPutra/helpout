<?php

namespace App\Http\Requests\Api;

use App\Models\Item;
use App\Models\ItemHistory;
use Illuminate\Foundation\Http\FormRequest;

class ItemHistoryRequest extends FormRequest
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
            'item_id' => ['required'],
            'purchase' => ['required'],
            'price' => ['required'],
            'quantity' => ['required'],
            'discount' => ['required'],
            'updated_by' => []
        ];
    }

    public function save($post, $id)
    {
        if ($id) {
            $itemHistory = ItemHistory::find($id);
        } else {
            $itemHistory = new ItemHistory();
        }
        
        foreach ($post as $field => $value) {
            $itemHistory->$field = $value;
        }
        $itemHistory->save();        
    }
}
