<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Order extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'customer_id',
        'updated_by'
    ];

    public function updatedBy()
    {
        return $this->belongsTo(Employee::class, 'updated_by');
    }
    
    public function customer()
    {
        return $this->belongsTo(Customer::class, 'customer_id');
    }

    public function items()
    {
        return $this->belongsToMany(Item::class, 'order_has_items', 'order_id', 'item_id')->withPivot('price', 'quantity', 'discount', 'amount');
    }

    public function payment()
    {
        return $this->hasOne(Payment::class, 'order_id');
    }
}
