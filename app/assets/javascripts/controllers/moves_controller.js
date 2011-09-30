TTT.MovesController = SC.ArrayProxy.extend({
  content: [],
  createMove: function(position, player, tile, timeStamp) {

    $.post('/moves.json', {move: {subject_position: position}},function(data, textStatus, jqXHR){
     
    move = TTT.Move.create(data);
    GameDriver.MoveHistory.pushObject(move);

    } );
    
  },
  undoLastMove: function(){
    this.popObject()
  }
});
