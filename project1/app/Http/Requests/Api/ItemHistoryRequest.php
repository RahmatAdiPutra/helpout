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
            $current_quantity = $itemHistory->quantity;
        } else {
            $itemHistory = new ItemHistory();
            $current_quantity = 0;
        }
        
        foreach ($post as $field => $value) {
            if ($field == 'quantity') {
                $new_quantity = $value;
                $itemHistory->$field = $new_quantity + $current_quantity;
            } else {
                $itemHistory->$field = $value;
            }
        }
        $itemHistory->save();

        $item = Item::find($itemHistory->item_id);
        $item->purchase = $itemHistory->purchase;
        $item->price = $itemHistory->price;
        $item->stock = $new_quantity + $item->stock;
        $item->discount = $itemHistory->discount;
        $item->updated_by = $itemHistory->updated_by;
        $item->save();
    }
}
