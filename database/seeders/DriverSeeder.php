<?php

use Illuminate\Database\Seeder;
use App\Models\Driver;

class DriverSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        $drivers = ['James', 'Evelyn', 'Harpe', 'Mason', 'Ella', 'Jackson', 'Avery', 'Scarlett', 'Jack', 'Eleanor', 'Madison', 'Ellie'];

        foreach ($drivers as $driver) {
            Driver::create([
                'name' => $driver,

            ]);
        }
    }
}
