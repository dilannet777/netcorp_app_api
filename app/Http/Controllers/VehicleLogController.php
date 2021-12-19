<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Repositories\VehicleLogRepositoryInterface;
use App\Helpers\BingMapApiHelper;
//

class VehicleLogController extends Controller
{

    private $vehicleLogRepository;

    public function __construct(VehicleLogRepositoryInterface $VehicleLogRepository)
    {
        $this->vehicleLogRepository = $VehicleLogRepository; 
    }

    public function getVehicleLogCount($id,Request $response)
    {
        return $this->vehicleLogRepository->getVehicleLogCount($id,$response->page_count);
    }

    public function getVehicleLastLogInfo($id)
    {

        $lastLocation = $this->vehicleLogRepository->getVehicleLastLogInfo($id);
        if (!empty($lastLocation['lat']) && !empty($lastLocation['lng'])){
            $bingLocation=(new BingMapApiHelper())->bingMapApiParser($lastLocation);
            if (!empty($bingLocation['success'])){

                try{
                $lastLocation['location']=$bingLocation['data']->ResourceSets->ResourceSet->Resources->Location;

                }catch (\Exception $e){

                    return $lastLocation ;                    
                }
            }
  
        }

        return $lastLocation;
    }


}
