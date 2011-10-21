TTT.Game = SC.Object.extend({
  row_labels: ['?', 'A', 'B', 'C', 'D', 'E' ],
  column_labels: ['?','1', '2', '3', '4', '5'],
  column: function(position){
     column_index = position % this.get('dimension');
     if ( column_index === 0){
        return this.get('dimension')
     }else{
       return column_index;
    }
  },
  prompt: function() {
    game = this;
    
    setTimeout(function(){
      now = (new Date).getTime()
      Sound.play(game.get('next_prompt'));
      game.set('last_prompt', now);

    }, 500)
  },
  last_prompt: (new Date).getTime(),
  labels: function(position) {
     return [ '?','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25'];
  }.property('dimension', 'row_labels', 'column_labels')
});

