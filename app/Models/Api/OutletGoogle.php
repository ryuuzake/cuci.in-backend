<?php

namespace App\Models\Api;

use App\Models\BaseModel;

class OutletGoogle extends BaseModel
{
    protected $table = 'outlet_google';
    protected $fillable = [
        'outlet_id',
        'created_at',
        'updated_at',
        'deleted_at',
    ];
}
