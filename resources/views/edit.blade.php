@extends('layouts.app')

@section('content')
<div class="container">
    <form action="{{ url('/editGame') }}" method="POST">
    <div class="d-flex justify-content-center">
        <div class="card">
            <div class="card-header">
                Edit Game
            </div>
            <div class="card-body">
                <div class="form-group">
                    @csrf
                    <input type="hidden" name="id" value="{{ $game->id }}">
                    <label for="gameTitle">Game Title</label>
                    <input type="text" class="form-control" id="gameTitle" name="game_name" value="{{ $game->game_name }}">
                    <label for="gamePicture">Game Picture</label>
                    <input type="text" class="form-control" id="gamePicture" name="picture_url" value="{{ $game->picture_url }}">
                    <label for="gameHtml">Embedded html:</label>
                    <textarea class="form-control" id="gameHtml" rows="3" name="html">{{ $game->html }}</textarea>
                </div>
            </div>
            <div class="card-footer">
                <button type="submit" class="btn btn-primary">Save changes</button>
                <a class="btn btn-secondary" href="{{ url()->previous() }}">Cancel</a>
            </div>
        </div>
    </div>
    </form>
</div>
@endsection
