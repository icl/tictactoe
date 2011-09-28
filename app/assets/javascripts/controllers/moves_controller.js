TTT.MovesController = SC.ArrayProxy.create({
  content: [],
  createMove: function(position, player, tile, timeStamp) {
    var move = TTT.Move.create({ position: position, player: player, tile:tile, timeStamp: timeStamp });
    console.warn(move);
    this.pushObject(move);
  },
  undoLastMove: function(){
    this.popObject()
  }
});
