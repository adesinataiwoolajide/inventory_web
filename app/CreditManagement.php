<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class CreditManagement extends Model
{
    use SoftDeletes;
    protected $table = 'credit_managements';
    protected $primaryKey = 'credit_id';
    protected $fillable = [
        'payment_id', 'distributor_id', 'credit_amount', 'paid_status',
    ];

    public function warehouseProduct(){
        return $this->belongsTo('App\Distributors');
    }
}
