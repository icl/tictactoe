TTT.Tile = SC.Object.extend({
  position: 0,
  labelString: function(){
   return this.getPath('game.labels')[this.get('position')];
   }.property('position', 'game'),
  hasComputerMove: function(){
   return this.getPath('game.MoveHistory').filterProperty('computer_position', this.get('position')).length > 0;
  }.property('game.MoveHistory.content.@each.computer_position'),
  hasNoMoves: function(){
  return !this.get('hasComputerMove') && !this.get('hasSubjectMove');
  }.property('hasComputerMove', 'hasSubjectMove'),
  hasSubjectMove: function(){
    return  this.getPath('game.MoveHistory').filterProperty('is_error', false).filterProperty('subject_position', this.get('position')).length > 0; 
  }.property('game.MoveHistory.content.@each.subject_position'),
   used: false
});
