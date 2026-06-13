<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    public function category()
    {
        return $this->belongsTo(Category::class);
    }
    public function reviews()
    {
        return $this->hasMany(Comment::class);
    }

    public function shopcart()
    {
        return $this->hasMany(ShopCart::class);
    }
    public function orderproducts()
    {
        return $this->hasMany(OrderProduct::class);
    }
}
