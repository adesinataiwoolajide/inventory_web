<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class CreditPayment extends Model
{
    use SoftDeletes;
    protected $table = 'credit_payments';
    protected $primaryKey = 'pay_id';
    protected $fillable = [
        'credit_id', 'amount_paid', 'payment_number', 'ware_house_id', 'distributor_id'
    ];

    public function credit(){
        return $this->belongsTo('App\CreditManagement', 'credit_id');
    }

    public function distributor(){
        return $this->belongsTo('App\Distributors', 'distributor_id');
    }

    public function warehouse(){
        return $this->belongsTo('App\WareHouseManagement', 'ware_house_id');
    }
}
