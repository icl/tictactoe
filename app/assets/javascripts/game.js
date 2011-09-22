
var TTT = SC.Application.create();

TTT.Move = SC.Object.extend({
  player: 'human',
  position: 0
});

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
  position: 0
});

TTT.TilesController = SC.ArrayProxy.create({
  content: [],
  createTile: function(position) {
    var tile = TTT.Tile.create({ position: position });
    this.pushObject(tile);
  }
});

[1,2,3,4,5,6,7,8,9].forEach(function(target) {
  TTT.MovesController.createMove(target, 'human' );
  TTT.TilesController.createTile(target);
});

TTT.MoveListItem = SC.View.extend({
 templateName: 'TTT.move_list_item',
 tagName: "tr"
})

TTT.TileView = SC.View.extend({
  classNameBindings: ['classnames', 'isDisabled:disabled'],
  isDisabled: function(){ content.get('used') },
  classnames: "btn primary btile",
  templateName: "TTT.TileView"
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
