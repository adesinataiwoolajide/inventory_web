<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Products extends Model
{
    use SoftDeletes;
    protected $table = 'products';
    protected $primaryKey = 'product_id';
    protected $fillable = [
        'product_name', 'product_slug', 'supplier_id', 'variant_id', 
        'amount', 'quantity', 'category_id', 'ware_house_id'
    ];

    public function category(){
        return $this->belongsTo('App\Categories', 'category_id');
    }

    public function variant(){
        return $this->belongsTo('App\ProductVariants', 'variant_id');
    }

    public function supplier(){
        return $this->belongsTo('App\Suppliers', 'supplier_id');
    }

    public function warehouse(){
        return $this->belongsTo('App\WareHouseManagement', 'ware_house_id');
    }
    //Working perfectly

    // public function inventory(){
    //     return $this->hasMany('App\InventoryStock', 'product_name', 'product_name');
    // }
    






    public function distributprProduct(){
        return $this->belongsTo('App\Distributor');
    }

    

    

    public function inventory(){
        return $this->hasMany('App\InventoryStock', 'product_name');
    }
}
