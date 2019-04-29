<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class WareHouseManagement extends Model
{
    use SoftDeletes;
    protected $table = 'ware_house_managements';
    public $primaryKey = 'ware_house_id';
    protected $fillable = [
        'name', 'address', 'city', 'state', 'country', 'start_date', 'user_id',
    ];

    public function user(){
        return $this->belongsTo('App\User', 'user_id');
    }

    public function product(){
        return $this->hasMany('App\Products', 'product_id');
    }

    public function inventory(){
        return $this->hasMany('App\WareHouseManagement', 'ware_house_id', 'stock_id');
    }

    public function order(){
        return $this->hasMany('App\OrderDetails', 'distributor_id');
    }

    
    public function warehouseOrder(){
        return $this->hasMany('App\WareHouseManagement', 'ware_house_id');
    }
}
