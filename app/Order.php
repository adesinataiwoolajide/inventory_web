<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Order extends Model
{
    use SoftDeletes;
    protected $table = 'orders';
    protected $primaryKey = 'order_id';
    protected $fillable = [
        'stock_id', 'transaction_number', 'quantity', 'unit_amount', 'total_amount', 'distributor_id'
    ];

    public function distributor(){
        return $this->belongsTo('App\Distributors', 'distributor_id');
    }

    // public function product(){
    //     return $this->hasMany('App\Product', 'product_id', 'category_id');
    // }

    public function inventory(){
        return $this->belongsTo('App\InventoryStock', 'stock_id');
    }


    public function warehouseOrder(){
        return $this->hasOne('App\WareHouseManagement');
    }

    
}
