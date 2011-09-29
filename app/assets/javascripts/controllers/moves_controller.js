TTT.MovesController = SC.ArrayProxy.extend({
  content: [],
  createMove: function(position, player, tile, timeStamp) {
    var move = TTT.Move.create({ position: position, player: player, tile:tile, timeStamp: timeStamp });
    this.pushObject(move);
  },
  undoLastMove: function(){
    this.popObject()
  }
});
