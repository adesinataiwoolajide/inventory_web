<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Products extends Model
{
    use SoftDeletes;
    protected $table = 'products';
    protected $primaryKey = 'product_id';
    protected $fillable = [
        'product_name', 'product_slug', 'supplier_id', 'variant_id', 
        'amount', 'quantity', 'category_id', 'ware_house_id'
    ];
}
