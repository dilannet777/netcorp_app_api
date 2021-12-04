<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


/**
 * @property int $vehicle_id
 * @property string $local_time
 * @property boolean $engine
 * @property float $lat
 * @property float $lng
 * @property integer $speed
 * @property integer $direction
 * @property int $agi_load_kilo
 * @property int $agi_water_meter
 * @property integer $agi_barrel_rpm
 * @property integer $agi_comm_rpm
 * @property integer $PSI
 * @property boolean $FLL
 * @property int $TFU
 * @property int $TVD
 * @property int $TRC
 * @property int $engine_hours
 */
class AgiLog extends Model
{
    
 
    /**
     * The table associated with the model.
     * 
     * @var string
     */
    protected $table = 'agi_log';

    /**
     * @var array
     */
    protected $fillable = ['vehicle_id', 'local_time', 'engine', 'lat', 'lng', 'speed', 'direction', 'agi_load_kilo', 'agi_water_meter', 'agi_barrel_rpm', 'agi_comm_rpm', 'PSI', 'FLL', 'TFU', 'TVD', 'TRC', 'engine_hours'];


}
