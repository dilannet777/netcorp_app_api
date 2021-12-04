<?php

namespace App\Models;
use App\Notifications\PasswordResetNotification;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use jeremykenedy\LaravelRoles\Traits\HasRoleAndPermission;
use Laravel\Sanctum\HasApiTokens;
use App\Http\Traits\DateTimeTrait;
use Illuminate\Contracts\Auth\MustVerifyEmail;

use Auth;


class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable,HasRoleAndPermission, DateTimeTrait;

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $fillable = [
        'name',
        'email',
        'password',
        'status'
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];


    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'last_login_at' => 'datetime:Y-m-d H:i:s'
    ];

    public function tasks()
    {
        return $this->hasMany(Task::class);
    }

    public function getId()
    {   
        return $this->id;
    }


    public function sendPasswordResetNotification($token)
    {
        $this->notify(new PasswordResetNotification($token));
    }

    public function AauthAcessToken(){
        return $this->hasMany('\App\Models\OauthAccessToken');
    }

    // Functions ...
     // Functions ...
	 public static function boot()
	 {
		parent::boot();
		static::creating(function($model)
		{
			$user = Auth::user();
            if ($user)
			    $model->created_by = $user->id;
			$model->created_at = date('Y-m-d H:i:s');
		});
 
		static::updating(function($model)
		{
			$user = Auth::user();
            if ($user)
			    $model->updated_by = $user->id;
			$model->updated_at =  date('Y-m-d H:i:s');
 
		});
	}
}
