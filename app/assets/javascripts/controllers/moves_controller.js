TTT.MovesController = SC.ArrayProxy.extend({
  content: [],
  createMove: function(data) {
    move = TTT.Move.create(data);
    move.set('game', this.get('game'))
    this.pushObject(move);
  },
  registerMove: function(tile, event) {
    move_controller = this;
    $.post('/moves.json', 
      {move: {  subject_position: tile.get('position'),
                move_timestamp: event.timeStamp,
                game_id: this.getPath('game.id'),
                subject_id: this.getPath('game.subject_id')
                
     
     
     
     
     
     }}, function(data){
       move_controller.createMove(data)
     });
  },
  undoLastMove: function(){
    this.popObject()
  }
});
