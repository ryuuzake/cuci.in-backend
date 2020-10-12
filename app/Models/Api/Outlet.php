<?php

namespace App\Models\Api;

use App\Models\BaseModel;

class Outlet extends BaseModel
{
    protected $fillable = [
        'name',
        'address',
        'phone',
        'rating',
        'laundry_type',
        'manhours',
        'owner_id',
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    public function owner()
    {
        return $this->belongsTo(Owner::class, 'owner_id', 'id');
    }

    public function transaction()
    {
        return $this->hasMany(Transaction::class, 'outlet_id', 'id');
    }
}
