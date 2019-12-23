<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ItemType extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'name',
        'updated_by'
    ];

    public function updatedBy()
    {
        return $this->belongsTo(Employee::class, 'updated_by');
    }

    public function items()
    {
        return $this->hasMany(Item::class, 'item_type_id');
    }
}
