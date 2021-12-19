<?php
namespace App\Repositories;


interface VehicleLogRepositoryInterface
{
   public function getVehicleLogCount($id,$count);
   public function getVehicleLastLogInfo($id);

}