<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class OrderDetails extends Model
{
    use SoftDeletes;
    protected $table = 'order_details';
    protected $primaryKey = 'details_id';
    protected $fillable = [
        'transaction_number', 'distributor_id', 'invoice_number', 'ware_house_id', 'order_status',
    ];

    public function distributor(){
        return $this->belongsTo('App\Distributors', 'distributor_id');
    }

    public function warehouse(){
        return $this->belongsTo('App\WareHouseManagement', 'ware_house_id');
    }

    public function payment(){
        return $this->hasOne('App\Payments', 'details_id', 'payment_id');
    }
}
