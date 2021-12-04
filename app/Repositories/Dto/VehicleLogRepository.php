<?php

namespace App\Repositories\Dto;


use App\Repositories\VehicleLogRepositoryInterface;
use App\Models\AgiLog;
use Carbon\Carbon;
use DB;


class VehicleLogRepository implements VehicleLogRepositoryInterface
{


    public function getVehicleLogCount($id,$count)
    {
        $pageCount = 50;
      
        if (!empty($count))
            $pageCount = $count;
     

        return AgiLog::select('vehicle_id','vehicles.name',DB::raw("concat(YEAR(local_time),'-', MONTH(local_time))  `year_month`"),DB::raw('count(*) `count`'))
        ->join('vehicles','vehicles.id','=','agi_log.vehicle_id')
        ->where('agi_log.vehicle_id',$id)
        ->groupBy('year_month')
        ->orderBy('local_time','desc')->paginate($pageCount);
    }

    public function getVehicleLastLogInfo($id)
    {
       
        return AgiLog::select('vehicle_id','vehicles.name','local_time','lat','lng','speed','direction')
        ->join('vehicles','vehicles.id','=','agi_log.vehicle_id')
        ->where('agi_log.vehicle_id',$id)
        ->orderBy('local_time','desc')->first();
    }


}