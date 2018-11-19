<?php

use Illuminate\Database\Seeder;

class UserLevelsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('user_levels')->insert([
            'user_level' => 'admin',
        ]);
        DB::table('user_levels')->insert([
            'user_level' => 'user',
        ]);
    }
}
