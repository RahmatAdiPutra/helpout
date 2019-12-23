<?php

namespace App\Http\Requests\Api;

use App\Models\Position;
use Illuminate\Foundation\Http\FormRequest;

class PositionRequest extends FormRequest
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
            $position = Position::find($id);
        } else {
            $position = new Position();
        }
        
        foreach ($post as $field => $value) {
            $position->$field = $value;
        }
        $position->save();
    }
}
