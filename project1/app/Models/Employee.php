<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class Employee extends Authenticatable
{
    use Notifiable, SoftDeletes;

    protected $fillable = [
        'position_id',
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
        'status'
    ];

    protected $hidden = [
        'token', 'password', 'remember_token',
    ];

    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function position()
    {
        return $this->belongsTo(Position::class, 'position_id');
    }

    public function updatedPositions()
    {
        return $this->hasMany(Position::class, 'updated_by');
    }

    public function updatedRoles()
    {
        return $this->hasMany(Role::class, 'updated_by');
    }

    public function updatedPermissions()
    {
        return $this->hasMany(Permission::class, 'updated_by');
    }

    public function updatedCustomers()
    {
        return $this->hasMany(Customer::class, 'updated_by');
    }

    public function updatedItemTypes()
    {
        return $this->hasMany(ItemType::class, 'updated_by');
    }

    public function updatedItems()
    {
        return $this->hasMany(Item::class, 'updated_by');
    }

    public function updatedItemHistories()
    {
        return $this->hasMany(ItemHistory::class, 'updated_by');
    }

    public function updatedOrders()
    {
        return $this->hasMany(Order::class, 'updated_by');
    }

    public function updatedPaymentMethods()
    {
        return $this->hasMany(PaymentMethod::class, 'updated_by');
    }

    public function updatedPayments()
    {
        return $this->hasMany(Payment::class, 'updated_by');
    }

    public function roles()
    {
        return $this->belongsToMany(Role::class, 'employee_has_roles', 'employee_id', 'role_id');
    }

    public function getStatusAttribute($value)
    {
        return $value ? 'Active' : 'Not Active';
    }
}
