<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateThirdPartyGamesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('third_party_games', function (Blueprint $table) {
            $table->increments('id');
            $table->charset = 'utf8';
            $table->collation = 'utf8_unicode_ci';
            $table->string('game_name', 255)->unique();
            $table->text('html');
            $table->text('picture_url');
            $table->unsignedBigInteger('plays')->default(0);
            $table->softDeletes();
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
        Schema::dropIfExists('third_party_games');
    }
}
