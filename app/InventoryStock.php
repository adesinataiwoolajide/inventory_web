<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class InventoryStock extends Model
{
    protected $table = 'inventory_stocks';
    protected $primaryKey = 'stock_id';
    protected $fillable = [
        'product_name', 'supplier_id', 'ware_house_id', 'quantity', 
        'category_id', 'variant_id'
    ];

    public function category(){
        return $this->belongsTo('App\Categories', 'category_id');
    }

    public function variant(){
        return $this->belongsTo('App\Products', 'variant_id');
    }

    public function invenvariant(){
        return $this->belongsTo('App\ProductVariants', 'variant_id');
    }

    public function supplier(){
        return $this->belongsTo('App\Suppliers', 'supplier_id');
    }

    public function warehouse(){
        return $this->belongsTo('App\WareHouseManagement', 'ware_house_id');
    }

    public function order(){
        return $this->hasMany('App\Order', 'stock_id', 'order_id');
    }

    // public function category(){
    //     return $this->belongsTo('App\Categories', 'category_id');
    // }
}
