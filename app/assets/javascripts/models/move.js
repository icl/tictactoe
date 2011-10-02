TTT.Move = SC.Object.extend({
  subject_position: 0,
  label: '?',
  isError: function(){
    return false;
  }.property('subject_position', 'history.content'),
    subjectPositionLabel: function() {
    return this.getPath('game.labels')[this.get('subject_position')];
  }.property('game', 'subject_position'),
    computerPositionLabel: function() {
    return this.getPath('game.labels')[this.get('computer_position')];
  }.property('game', 'computer_position')

});


