<?php

use Illuminate\Database\Seeder;

class UsersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'name' => 'ampirchert',
            'email' => 'ampirchert@gmail.com',
            'password' => bcrypt('k0de0rd'),
            'user_level' => 'admin',
        ]);
    }
}
