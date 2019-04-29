<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Categories extends Model
{
    use SoftDeletes;
   // protected $guard_name = 'web';
    protected $table = 'categories';
    protected $primaryKey = 'category_id';
    protected $fillable = [
        'category_name',
    ];

    public function variant(){
        return $this->hasMany('App\ProductVariant', 'variant_id', 'category_id');
    }

    public function product(){
        return $this->hasMany('App\Product', 'product_id', 'category_id');
    }

    public function inventory(){
        return $this->hasMany('App\InventoryStock', 'category_id', 'stock_id');
    }
}
