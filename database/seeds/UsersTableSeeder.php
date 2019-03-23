<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //添加超级管理员
        DB::table('admin_users')->insert([
            'name'=>'admin',
            'password'=>bcrypt('123456'),
            'remember_token'=>'1'
        ]);
    }
}
