TTT.Move = SC.Object.extend({
  subject_position: 0,
  label: '?',
    subjectPositionLabel: function() {
    return this.getPath('game.labels')[this.get('subject_position')];
  }.property('game', 'subject_position'),
    computerPositionLabel: function() {
    return this.getPath('game.labels')[this.get('computer_position')];
  }.property('game', 'computer_position')

});


