<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AssignOutlet extends Model
{
    protected $table = 'assign_outlets';
    protected $fillable = [
        'outlet_id','distributor_id',
    ];

    public function distributor(){
        return $this->belongsTo('App\Distributors', 'distributor_id');
    }

    //Working
    public function outlet(){
        return $this->belongsTo('App\Outlets', 'outlet_id');
    }
}
