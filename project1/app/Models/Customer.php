<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Customer extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'id_card_number',
        'name',
        'gender',
        'birthday',
        'religion',
        'city',
        'address',
        'phone_number',
        'email',
        'email_verified_at',
        'token',
        'password',
        'status',
        'updated_by'
    ];

    protected $hidden = [
        'token', 'password', 'remember_token',
    ];

    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function updatedBy()
    {
        return $this->belongsTo(Employee::class, 'updated_by');
    }

    public function orders()
    {
        return $this->hasMany(Order::class, 'customer_id');
    }
}
