<div class="modal fade" id="addGameModal" tabindex="-1" role="dialog" aria-labelledby="addGameModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
    <form action="{{ url('/addGame') }}" method="POST">
        <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title" id="addGameModalLabel">Add Game</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    @csrf
                    <label for="gameTitle">Game Title</label>
                    <input type="text" class="form-control" id="gameTitle" name="game_name" placeholder="Game Title">
                    <label for="gamePicture">Game Picture</label>
                    <input type="text" class="form-control" id="gamePicture" name="picture_url" placeholder="Game Picture embed html code">
                    <label for="gameHtml">Embedded html:</label>
                    <textarea class="form-control" id="gameHtml" rows="3" name="html" placeholder="<div><script src='https://some.url'></script></div>"></textarea>
                </div>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary">Save changes</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
            </div>
        </div>
    </form>
    </div>
</div>
