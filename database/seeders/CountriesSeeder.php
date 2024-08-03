<?php

namespace Database\Seeders;

use App\Models\Country;
use App\Models\State;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use DB;

class CountriesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
      $countries = file_get_contents(storage_path('data/countries.json'));
      $countries = json_decode($countries, true)['countries'];
      Country::insert($countries);

      $states = file_get_contents(storage_path('data/states.json'));
      $states = json_decode($states, true)['states'];
      State::insert($states);
    }
}
