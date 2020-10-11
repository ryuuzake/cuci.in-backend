<?php

namespace App\Models\Api;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
    protected $fillable = [
        'po_number',
        'address',
        'price',
        'amount',
        'laundry_types_id',
        'status',
        'customer_id',
        'outlet_id',
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    public function laundryType()
    {
        return $this->belongsTo(LaundryType::class, 'laundry_types_id', 'id');
    }

}
