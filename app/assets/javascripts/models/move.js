TTT.Move = SC.Object.extend({
  subject_position: 0,
  label: '?',
  isError: function(){

return false;
  }.property('subject_position', 'history.content')
});


