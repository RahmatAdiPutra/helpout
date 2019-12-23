<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Item extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'item_type_id',
        'name',
        'price',
        'stock',
        'discount',
        'description',
        'updated_by'
    ];

    public function updatedBy()
    {
        return $this->belongsTo(Employee::class, 'updated_by');
    }

    public function itemType()
    {
        return $this->belongsTo(ItemType::class, 'item_type_id');
    }

    public function itemHistories()
    {
        return $this->hasMany(ItemHistory::class, 'item_id');
    }

    public function orders()
    {
        return $this->belongsToMany(Order::class, 'order_has_items', 'item_id', 'order_id')->withPivot('price', 'quantity', 'discount', 'amount');
    }
}
