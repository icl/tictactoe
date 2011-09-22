
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

[0,1,2,3].forEach(function(target) {
TTT.MovesController.createMove(target, 'human' )
});

TTT.MoveListItem = SC.View.extend({
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
