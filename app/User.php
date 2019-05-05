<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Contracts\Auth\CanResetPassword;
use Spatie\Permission\Traits\HasRoles;
use Illuminate\Database\Eloquent\SoftDeletes;

class User extends Authenticatable implements MustVerifyEmail
{

    use Notifiable;
    use HasRoles;
    use SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $table = 'users';
    public $primaryKey = 'user_id';
    protected $guard_name = 'web';
    protected $fillable = [
        'name', 'email', 'password', 'role', 'status',
    ];

    public function warehouse(){
        return $this->hasMany('App\WareHouseManagement', 'user_id', 'ware_house_id');
    }

    public function log(){
        return $this->hasMany('App\ActivityLog', 'user_id', 'activity_id');
    }

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'role' => 'array',
    ];
}
