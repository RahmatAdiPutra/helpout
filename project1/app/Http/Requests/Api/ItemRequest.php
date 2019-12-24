<?php

namespace App\Http\Requests\Api;

use App\Models\Item;
use App\Models\ItemHistory;
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
            'purchase' => ['required'],
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
            $current_stock = $item->stock;
        } else {
            $item = new Item();
            $current_stock = 0;
        }
        
        foreach ($post as $field => $value) {
            if ($field == 'stock') {
                $new_stock = $value;
                $item->$field = $new_stock + $current_stock;
            } else {
                $item->$field = $value;
            }
        }
        $item->save();

        $itemHistory = new ItemHistory();
        $itemHistory->item_id = $item->id;
        $itemHistory->purchase = $item->purchase;
        $itemHistory->price = $item->price;
        $itemHistory->quantity = $new_stock;
        $itemHistory->discount = $item->discount;
        $itemHistory->updated_by = $item->updated_by;
        $itemHistory->save();
    }
}
