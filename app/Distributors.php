<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Distributors extends Model
{
    use SoftDeletes;
    protected $table = 'distributors';
    protected $primaryKey = 'distributor_id';
    protected $fillable = [
        'name', 'phone_one', 'phone_two', 'email', 'address', 'credit_limit', 
        'credit_reduction_per_month'
    ];

    public function order(){
        return $this->hasMany('App\OrderDetails', 'distributor_id');
    }

    public function assign(){
        return $this->hasMany('App\AssignOutlet', 'distributor_id', 'assign_id');
    }

    public function outlet(){
        return $this->belongsTo('App\Outlet', 'outlet_id');
    }


    // public function credit(){
    //     return $this->hasMany('App\CreditManagement');
    // }
}
