<?php

namespace Database\Seeders;

use App\Models\User;
use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class DefaultUserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
      $input = [
        'first_name' => 'admin',
        'email' => 'admin@creativ356.com',
        'email_verified_at' => Carbon::now(),
        'password' => Hash::make('admin123'),
      ];
      $user = User::create($input);
    }
}
