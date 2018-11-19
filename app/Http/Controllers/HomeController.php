<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ThirdPartyGame;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $thirdPartyGames = ThirdPartyGame::paginate(15);
        return view('home', [
            'thirdPartyGames' => $thirdPartyGames
            ]
        );
    }

    public function show($id){
        $thirdPartyGame = ThirdPartyGame::findOrfail($id);
        return view('game', [
            'game' => $thirdPartyGame
        ]);
    }
}
