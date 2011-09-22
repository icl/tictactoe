
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
  }
});

TTT.MoveListItem = SC.View.extend({
 templateName: 'TTT.move_list_item',
 tagName: "tr"
})

TTT.BoardView = SC.View.extend({
 content: "Main content"
});

TTT.MoveHistory = SC.View.extend({
 content: "Secondary content"
});
