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
        'order_id', 'total_amount', 'paid_amount', 'payment_number', 'paid_status',
    ];
}
