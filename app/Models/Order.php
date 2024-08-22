<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Item;

class Order extends Model
{
    use HasFactory;

    public const STATUSES = [
        'open',
        'prepared',
        'delivered',
    ];

    public function items()
    {
        return $this->HasMany(Item::class);
    }

    public function customer()
    {
        return $this->belongsTo(Customer::class);
    }
}
