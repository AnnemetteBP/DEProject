<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddUserLevelToUser extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function($table){
            $table->charset = 'utf8';
            $table->collation = 'utf8_unicode_ci';
            $table->string('user_level', 255)->nullable();
            //Links the user level to this user in another table called user_levels
            $table->foreign('user_level')->references('user_level')->on('user_levels');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropForeign('user_level');
            $table->dropColumn('user_level');
        });
    }
}
