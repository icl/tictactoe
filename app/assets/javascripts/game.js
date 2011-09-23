var TTT = SC.Application.create();
var alpha = ['A','B','C','D','E']


TTT.Move = SC.Object.extend({
  player: 'human',
  position: 0
});

TTT.Game = SC.Object.extend({
  dimension: 3,
  condition: "Normal"
});

TTT.current_game = TTT.Game.create(current_game);


TTT.MovesController = SC.ArrayProxy.create({
  content: [],
  createMove: function(position, player) {
    var move = TTT.Move.create({ position: position, player: player });
    this.pushObject(move);
  },
  undoLastMove: function(){
    this.popObject()
  }
});

TTT.Tile = SC.Object.extend({
  position: 0,
  game: TTT.current_game,

  
  labelString: function(){ 
    return "Boom";
/*
    if ( position > 0 ) {
      return alpha[position / game.dimension] + (position % dimension)
    }
*/
  }.property('label')

});

TTT.TilesController = SC.ArrayProxy.create({
  content: [],
  createTile: function(position) {
    var tile = TTT.Tile.create({ position: position });
    this.pushObject(tile);
  }
});

var dimension = current_game['dimension'];

for(row = 0; row < dimension; row++){

  for(column =0; column < dimension; column++)
  {
    position = row *  dimension + column + 1;
    TTT.TilesController.createTile(position);
  }
}
TTT.MoveListItem = SC.View.extend({
 templateName: 'TTT.move_list_item',
 tagName: "tr"
})

TTT.TileView = SC.View.extend({
  classNameBindings: ['classnames', 'isDisabled:disabled'],
  isDisabled: function(){ content.get('used') },
  classnames: "btn primary btile",
  templateName: "TTT.TileView",
  mouseDown: function() {
    TTT.MovesController.createMove( this.content.position, 'human');
  }
});

TTT.UndoLastMoveView = SC.View.extend({
  click: function(event) {
    TTT.MovesController.undoLastMove();
    return false;
  }
});

TTT.BoardView = SC.View.extend({
 templateName: "TTT.BoardView"
});

TTT.MoveHistory = SC.View.extend({
 content: "Secondary content"
});
