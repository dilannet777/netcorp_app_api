<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Repositories\VehicleRepositoryInterface;
//

class VehicleController extends Controller
{

    private $vehicleRepository;

    public function __construct(VehicleRepositoryInterface $VehicleRepository)
    {
        $this->vehicleRepository = $VehicleRepository; 
    }

    public function getActiveVehicleList(Request $request)
    {
        return $this->vehicleRepository->getActiveVehicleList($request);
    }

}
