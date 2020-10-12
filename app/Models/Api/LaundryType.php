<?php

namespace App\Models\Api;

use App\Models\BaseModel;

class LaundryType extends BaseModel
{
    protected $fillable = [
        'name',
        'created_at',
        'updated_at',
        'deleted_at',
    ];
}
