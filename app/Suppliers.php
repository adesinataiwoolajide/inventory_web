<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Suppliers extends Model
{
    use SoftDeletes;
    protected $table = 'suppliers';
    protected $primaryKey = 'supplier_id';
    protected $fillable = [
        'name', 'phone_one', 'phone_two', 'email', 'address', 'city', 
        'state', 'country'
    ];

    public function product(){
        return $this->hasMany('App\Products', 'product_id');
    }

    public function inventory(){
        return $this->hasMany('App\Suppliers', 'supplier_id', 'stock_id');
    }
}
