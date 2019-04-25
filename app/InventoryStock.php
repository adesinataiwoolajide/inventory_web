<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class InventoryStock extends Model
{
    protected $table = 'inventory_stocks';
    protected $fillable = [
        'product_name', 'supplier_id', 'ware_house_id', 'quantity', 
        'category_id', 'variant_id'
    ];
}
