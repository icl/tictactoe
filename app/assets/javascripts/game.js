//= require ttt

var alpha = ['?', 'A','B','C','D','E']
var current_game = TTT.Game.create({})
var dimension = current_game['dimension'];

for(row = 0; row < dimension; row++){

  for(column =0; column < dimension; column++)
  {
    position = row *  dimension + column + 1;
    TTT.TilesController.createTile(position, );
  }
}




TTT.MoveListItem = SC.View.extend({
  classNames: '',
 templateName: 'TTT.move_list_item',
 tagName: "tr"
})



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
