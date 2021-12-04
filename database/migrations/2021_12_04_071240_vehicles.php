<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Vehicles extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vehicles', function (Blueprint $table) {
            $table->id();
            $table->integer('company_id');
            $table->string('name');
            $table->string('description');
            $table->string('model');
            $table->unsignedSmallIntegr('manufacture_year');
            $table->string('color');
            $table->string('make');
            $table->string('owner');
            $table->string('department');
            $table->string('note');
            $table->string('vehicle_no');
            $table->string('is_agidrive');
            $table->string('post_speed');
            $table->string('initial_mileage');
            $table->string('accumulated_mileage');
            $table->integer('fuel_level_adjustment');           
            $table->string('target_mileage');
            $table->integer('max_weight');
            $table->timestamp('created_at')->nullable();
            $table->timestamp('updated_at')->nullable();
            $table->integer('status')->nullable();
            $table->integer('deleted_at')->nullable();
            $table->string('icon')->nullable();
            $table->string('icon_color')->nullable();
            $table->integer('security_group_id');
            $table->integer('data_retention_period');
            $table->timestamp('app_last_active');
            $table->string('app_last_status');
            $table->string('admin_note');
            $table->unsignedSmallInteg('speed_source');
            $table->string('vehicle_type');
            $table->string('tech_name');
            $table->string('site_name');
            $table->unsignedSmallIntegr('data_retention_period');
            $table->unsignedSmallIntegr('scale_type');
            $table->date('install_date');
            $table->tinyInteger('installed_gps_tracker');
            $table->tinyInteger('installed_black_box');
            $table->tinyInteger('installed_tablet_cradle ');
            $table->tinyInteger('installed_canbus');
            $table->tinyInteger('installed_barrel_sensor');
            $table->tinyInteger('installed_scales');
            $table->tinyInteger('installed_mdvr');
            $table->tinyInteger('installed_dashcam');
            $table->string('installed_other');
            $table->timestamps();
        });
    }
    

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('vehicles');
    }
    
}
