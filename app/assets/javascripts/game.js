
var GameDriver = TTT.Game.create(current_game);
GameDriver.set('MoveHistory', TTT.MovesController.create({game: GameDriver}));

GameDriver.moves.forEach(function(item) {
  item['game'] = GameDriver;
  GameDriver.MoveHistory.pushObject(TTT.Move.create(item));
});
GameDriver.set('Tiles', TTT.TilesController.create({game: GameDriver}));

var dimension = GameDriver.get('dimension');

for(row = 0; row < dimension; row++){

  for(column =0; column < dimension; column++)
  {
    position = row *  dimension + column + 1;
    GameDriver.Tiles.createTile(position, GameDriver);
  }
}

