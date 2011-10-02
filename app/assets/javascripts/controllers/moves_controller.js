TTT.MovesController = SC.ArrayProxy.extend({
  content: [],
  createMove: function(data) {
    move = TTT.Move.create(data);
    console.warn(move);
   this.pushObject(move);

    
    
  },
  registerMove: function(tile, event) {
     $.post('/moves.json', {move: {subject_position: position}}, this.CreateMove)
  },
  undoLastMove: function(){
    this.popObject()
  }
});
