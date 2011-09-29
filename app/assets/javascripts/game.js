//= require ttt

var alpha = ['?', 'A','B','C','D','E']

var dimension = current_game['dimension'];

for(row = 0; row < dimension; row++){

  for(column =0; column < dimension; column++)
  {
    position = row *  dimension + column + 1;
    TTT.TilesController.createTile(position );
  }
}


TTT.BoardView = SC.View.extend({
 templateName: "TTT.BoardView"
});

TTT.MoveHistory = SC.View.extend({
 content: "Secondary content"
});
