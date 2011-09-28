//= require ttt

var alpha = ['?', 'A','B','C','D','E']



TTT.current_game = TTT.Game.create(current_game);




TTT.Tile = SC.Object.extend({
  
  game: TTT.current_game,
  position: 0,
  row: function(){
     return  Math.ceil( this.position / this.game.dimension); 
  },
  column: function(){
    return (this.position % this.game.dimension === 0? this.game.dimension : this.position % this.game.dimension );
  },
  labelString: function(){ 
    
    if ( this.position > 0 ) {
      
      return alpha[this.column()] + this.row();
    }
   }.property('row', 'column')
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
  classNames: '',
 templateName: 'TTT.move_list_item',
 tagName: "tr"
})

TTT.TileView = SC.View.extend({
  classNameBindings: ['classnames', 'isDisabled:disabled'],
  isDisabled: function(){ content.get('used') },
  classnames: "btn primary btile",
  templateName: "TTT.TileView",
  mouseDown: function(event) {
    console.warn(event);
    TTT.MovesController.createMove( this.content.position, 'human', this.content, event.timeStamp  );
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
