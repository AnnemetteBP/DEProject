@extends('layouts.app')

@section('content')
<div class="container">
    <div class="d-flex justify-content-center">
        <a class="btn btn-primary btn-sm align-self-start" href="{{ url()->previous() }}">Back</a>
        @if (isset($game))
            {!! $game->html !!}
        @else
                There was an error loading the game.
        @endif
    </div>
</div>
@endsection
