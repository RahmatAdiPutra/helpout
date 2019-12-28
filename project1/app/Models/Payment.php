<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Payment extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'payment_method_id',
        'order_id',
        'card_number',
        'due_date',
        'total_amount',
        'status',
        'updated_by'
    ];

    public function updatedBy()
    {
        return $this->belongsTo(Employee::class, 'updated_by');
    }

    public function paymentMethod()
    {
        return $this->belongsTo(PaymentMethod::class, 'payment_method_id');
    }

    public function order()
    {
        return $this->belongsTo(Order::class, 'order_id')->with('customer');
    }
}
