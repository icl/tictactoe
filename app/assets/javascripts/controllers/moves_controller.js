TTT.MovesController = SC.ArrayProxy.extend({
  content: [],
  lastValidMove: function() {
    return this.filterProperty('is_error', false).pop();
  }.property('@each.is_error'),
  createMove: function(data) {
    move = TTT.Move.create(data);
    move.set('game', this.get('game'))
    this.pushObject(move);
  },
  registerMove: function(tile, event) {
    move_controller = this;

    this.get('game').prompt();

     console.warn( event.timeStamp - 
       this.getPath('game.last_prompt'));
  var boom =  this.get('game').last_prompt;
    $.post('/moves.json', 
      {move: {  subject_position: tile.get('position'),
                move_timestamp: event.timeStamp,
                game_id: this.getPath('game.id'),
                subject_id: this.getPath('game.subject_id'),
                prompt_timestamp: this.getPath('game.last_prompt')
      }}, function(data){
       move_controller.createMove(data)
       move_controller.setPath('game.next_prompt',data["computer_position"]);
     });
  },
  undoLastMove: function(){
    if (this.get('lastObject')){
      move = this.get('lastObject');
    move_controller = this;
    $.post('/moves/' + this.get('lastObject').get('id') + '.json' , { _method: 'delete' }, function(){
      console.warn('got here');
    });
    move_controller.removeObject(move);
    };
  }
});
