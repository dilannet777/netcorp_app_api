<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AgiLog extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('agi_log', function (Blueprint $table) {
            $table->integer('vehicle_id');
            $table->timestamp('local_time');
            $table->primary(['vehicle_id','local_time']);
            $table->integer('engine');
            $table->double('lat',12,2);
            $table->double('lng',12,2);
            $table->unsignedSmallInteger('speed');
            $table->unsignedSmallInteger('direction');
            $table->mediumInteger('agi_load_kilo');
            $table->mediumInteger('agi_water_meter');
            $table->unsignedSmallInteger('agi_barrel_rpm');
            $table->unsignedSmallInteger('agi_comm_rpm');
            $table->unsignedSmallIntege('PSI');
            $table->tinyInteger('FLL');
            $table->mediumInteger('TFU');
            $table->mediumInteger('TVD');
            $table->ingeger('TRC');
            $table->integer('engine_hours');
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
        Schema::dropIfExists('agi_log');
    }
}
