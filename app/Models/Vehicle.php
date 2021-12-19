<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Traits\DateTimeTrait;


/**
 * @property int $id
 * @property int $company_id
 * @property string $name
 * @property string $description
 * @property string $model
 * @property integer $manufacture_year
 * @property string $color
 * @property string $make
 * @property string $owner
 * @property string $department
 * @property string $note
 * @property string $vehicle_no
 * @property string $is_agidrive
 * @property string $post_speed
 * @property string $initial_mileage
 * @property string $accumulated_mileage
 * @property string $target_mileage
 * @property int $max_weight
 * @property int $fuel_level_adjustment
 * @property string $created_at
 * @property string $updated_at
 * @property string $deleted_at
 * @property string $status
 * @property string $icon
 * @property string $icon_color
 * @property int $security_group_id
 * @property int $data_retention_period
 * @property string $app_last_active
 * @property string $app_last_status
 * @property string $admin_note
 * @property integer $speed_source
 * @property string $vehicle_type
 * @property string $ownership
 * @property string $install_date
 * @property string $tech_name
 * @property string $site_name
 * @property integer $scale_type
 * @property boolean $installed_gps_tracker
 * @property boolean $installed_black_box
 * @property boolean $installed_tablet_cradle
 * @property boolean $installed_canbus
 * @property boolean $installed_barrel_sensor
 * @property boolean $installed_scales
 * @property boolean $installed_mdvr
 * @property boolean $installed_dashcam
 * @property string $installed_other
 */
class Vehicle extends Model
{
   
    use DateTimeTrait;
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'vehicles';

    /**
     * The primary key for the model.
     *
     * @var string
     */
    protected $primaryKey = 'id';
   
   
    /**
     * @var array
     */
    protected $fillable = ['company_id', 'name', 'description', 'model', 'manufacture_year', 'color', 'make', 'owner', 'department', 'note', 'vehicle_no', 'is_agidrive', 'post_speed', 'initial_mileage', 'accumulated_mileage', 'target_mileage', 'max_weight', 'fuel_level_adjustment', 'created_at', 'updated_at', 'deleted_at', 'status', 'icon', 'icon_color', 'security_group_id', 'data_retention_period', 'app_last_active', 'app_last_status', 'admin_note', 'speed_source', 'vehicle_type', 'ownership', 'install_date', 'tech_name', 'site_name', 'scale_type', 'installed_gps_tracker', 'installed_black_box', 'installed_tablet_cradle', 'installed_canbus', 'installed_barrel_sensor', 'installed_scales', 'installed_mdvr', 'installed_dashcam', 'installed_other'];

    public static function boot()
    {
       parent::boot();
       static::creating(function($model)
       {
           $model->created_at = date('Y-m-d H:i:s');
       });

       static::updating(function($model)
       {
          $model->updated_at =  date('Y-m-d H:i:s');

       });

       static::deleting(function ($model) {
        $model->deleted_at =date('Y-m-d H:i:s');
      });
   }

}
