<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ItemHistory extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'item_id',
        'quantity',
        'updated_by'
    ];

    public function updatedBy()
    {
        return $this->belongsTo(Employee::class, 'updated_by');
    }

    public function item()
    {
        return $this->belongsTo(Item::class, 'item_id');
    }
}
