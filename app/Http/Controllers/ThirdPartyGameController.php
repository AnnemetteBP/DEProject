<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use \App\ThirdPartyGame;

class ThirdPartyGameController extends Controller
{
    public function __construct()
    {
        //Enforces the current user to be authenticated to use the functionallity of this controller
        $this->middleware('auth')->except([
            'index',
            'show'
        ]);
    }

    //Admin functionallity

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\AddThirdPartyGame $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'game_name' => 'required|unique:third_party_games,game_name|string|max:225',
            'html' => 'required|string|max:225',
            'picture_url' => 'required|string|max:225',
        ]);
        $game = \App\ThirdPartyGame::create([
            'game_name' => $request->input('game_name'),
            'html' => $request->input('html'),
            'picture_url' => $request->input('picture_url'),
        ])->save();
        $thirdPartyGames = ThirdPartyGame::paginate(15);
        return route('home', [
            'thirdPartyGames' => 1
            ])->with('success', ['Game was saved.']);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\UserLevel  $userLevel
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $game = ThirdPartyGame::find($id);
        return view('edit', ['game' => $game]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $this->validate($request, [
            'game_name' => 'required|unique:third_party_games,game_name|string|max:225',
            'html' => 'required|string|max:225',
            'picture_url' => 'required|string|max:225',
        ]);
        $game = ThirdPartyGame::find($request->input('id'));
        $game->update([
            'game_name' => $request->input('game_name'),
            'html' => $request->input('html'),
            'picture_url' => $request->input('picture_url'),
        ]);
        $thirdPartyGames = ThirdPartyGame::paginate(15);
        return redirect('home');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\UserLevel  $userLevel
     * @return \Illuminate\Http\Response
     */
    public function destroy(UserLevel $userLevel)
    {
        //
    }
}
