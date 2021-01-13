<?php

namespace App\Models\Api;

use App\Models\BaseModel;
use App\Models\User;

class Partnership extends BaseModel
{
    protected $fillable = [
        'user_id',
        'owner_name',
        'phone',
        'address',
        'laundry_type',
        'status',
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
}
