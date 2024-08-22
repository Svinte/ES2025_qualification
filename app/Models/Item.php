<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
    use HasFactory;

    public function product()
    {
        return $this->BelongsTo(Product::class);
    }
    
    public function symbol()
    {
        return $this->BelongsTo(Symbol::class);
    }
}
