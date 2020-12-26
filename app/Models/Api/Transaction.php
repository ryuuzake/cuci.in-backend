<?php

namespace App\Models\Api;

use App\Models\BaseModel;

class Transaction extends BaseModel
{
    protected $fillable = [
        'po_number',
        'address',
        'price',
        'amount',
        'laundry_type',
        'status',
        'customer_id',
        'outlet_id',
        'outlet_google_id',
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    public function customer()
    {
        return $this->belongsTo(Customer::class, 'customer_id', 'id');
    }

    public function outlet()
    {
        return $this->belongsTo(Outlet::class, 'outlet_id', 'id');
    }
}
