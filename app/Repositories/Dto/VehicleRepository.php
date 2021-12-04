<?php

namespace App\Repositories\Dto;


use App\Repositories\VehicleRepositoryInterface;
use App\Models\Vehicle;


class VehicleRepository implements VehicleRepositoryInterface
{


    public function getActiveVehicleList($data)
    {
        $pageCount = 50;
      
        if (!empty($data->page_count))
            $pageCount = $data->page_count;
        

        return Vehicle::select('id','name','is_agidrive')->whereNull('deleted_at')->orderBy('is_agidrive','desc')->orderBy('updated_at','desc')->paginate($pageCount);
    }


}