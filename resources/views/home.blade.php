@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row d-flex justify-content-center">
        <div class="col-12">
            <div class="card">
                <div class="card-header d-flex justify-content-between">
                        <div class="align-self-center">Games</div>
                        @auth
                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-primary align-self-end" data-toggle="modal" data-target="#addGameModal">
                                Add Game
                            </button>

                            <!-- Add Game Modal -->
                            @include('layouts.addGameModal')
                        @endauth
                </div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    @if (count($thirdPartyGames) > 0)
                        <div class="row d-flex">
                            @foreach ($thirdPartyGames as $thirdPartyGame)
                                <div class="col-4">
                                    {{ $thirdPartyGame->game_name }} played {{ $thirdPartyGame->plays }} times @auth
                                    <a href="{{ url('/edit') . '/' . $thirdPartyGame->id }}">edit</a>
                                    @endauth<br>
                                    <a href="{{ url('/game') . '/' . $thirdPartyGame->id }}"><img src="{{ $thirdPartyGame->picture_url }}" alt=""></a>
                                </div>
                            @endforeach
                        </div>
                    @else
                            There are no games at the moment
                    @endif
                </div>
            </div>
        </div>
        {{ $thirdPartyGames->links() }}
    </div>
</div>
@endsection
