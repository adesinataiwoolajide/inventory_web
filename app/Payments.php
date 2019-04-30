<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Payments extends Model
{
    use SoftDeletes;
    protected $table = 'payments';
    protected $primaryKey = 'payment_id';
    protected $fillable = [
        'details_id', 'total_amount', 'paid_amount', 'ware_house_id', 'credit', 'distributor_id', 'paid_status', 'payment_number'
    ];

    public function order(){
        return $this->belongsTo('App\OrderDetails', 'details_id');
    }

    public function distributor(){
        return $this->belongsTo('App\Distributors', 'distributor_id');
    }

    public function warehouse(){
        return $this->belongsTo('App\WareHouseManagement', 'ware_house_id');
    }
}
