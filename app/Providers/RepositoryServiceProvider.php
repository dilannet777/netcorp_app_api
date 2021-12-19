<?php

namespace App\Providers;


use App\Repositories\AuthRepositoryInterface;
use App\Repositories\VehicleRepositoryInterface;
use App\Repositories\VehicleLogRepositoryInterface;
use App\Repositories\Dto\AuthRepository;
use App\Repositories\Dto\VehicleRepository;
use App\Repositories\Dto\VehicleLogRepository;
use Illuminate\Support\ServiceProvider;

/** 
* Class RepositoryServiceProvider 
* @package App\Providers 
*/ 

class RepositoryServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        $this->app->bind(AuthRepositoryInterface::class, AuthRepository::class);
        $this->app->bind(VehicleRepositoryInterface::class, VehicleRepository::class);
        $this->app->bind(VehicleLogRepositoryInterface::class, VehicleLogRepository::class);
    }

}
