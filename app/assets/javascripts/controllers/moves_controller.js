TTT.MovesController = SC.ArrayProxy.extend({
  content: [],
  createMove: function(position, player, tile, timeStamp) {
    var move = TTT.Move.create({ subject_position: position, tile:tile, timeStamp: timeStamp, history:this });
    this.pushObject(move);
  },
  undoLastMove: function(){
    this.popObject()
  }
});
