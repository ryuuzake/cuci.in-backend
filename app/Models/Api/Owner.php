<?php

namespace App\Models\Api;

use App\Models\BaseModel;
use App\Models\User;

class Owner extends BaseModel
{
    protected $fillable = [
        'user_id',
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }

    public function outlet()
    {
        return $this->hasOne(Outlet::class, 'owner_id', 'id');
    }
}
