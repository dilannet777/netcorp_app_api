<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;
use App\Http\Traits\DateTimeTrait;

/**
 * @property string     $name
 * @property datetime   $created_at
 * @property datetime   $updated_at
 */

class Driver extends Model
{
    use DateTimeTrait;
   
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'drivers';

    /**
     * The primary key for the model.
     *
     * @var string
     */
    protected $primaryKey = 'id';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'created_at', 'updated_at'
    ];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'name'=>'string','created_at'=>'datetime:Y-m-d H:i:s', 'updated_at' => 'datetime:Y-m-d H:i:s'
    ];

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = [
        'created_at', 'updated_at'
    ];

    /**
     * Indicates if the model should be timestamped.
     *
     * @var boolean
     */
    public $timestamps = false;

    // Scopes...

    // Functions ...
    public static function boot()
    {
        parent::boot();
        static::creating(function ($model) {
            $model->created_at = Carbon::now();
        });
        static::updating(function ($model) {
            $model->updated_at = Carbon::now();
        });
  
    }

    // Relations ... 
}