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
        'stock_id', 'transaction_id', 'quantity', 'unit_amount', 'total_amount', 'distributor_id'
    ];

    
}
