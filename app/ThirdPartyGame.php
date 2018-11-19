<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ThirdPartyGame extends Model
{
    protected $fillable = [
        'game_name',
        'html',
        'picture_url',
    ];
}
