<?php

namespace App\Models\Api;

use App\Models\BaseModel;
use App\Models\User;

class Customer extends BaseModel
{
    protected $fillable = [
        'user_id',
        'address',
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }

    public function transaction()
    {
        return $this->hasMany(Transaction::class, 'outlet_id', 'id');
    }
}
