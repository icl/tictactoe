TTT.MoveListItem = SC.View.extend({
  classNames: '',
 templateName: 'TTT.move_list_item',
 tagName: "tr",
 classNames: "",
 classNameBindings: "content.isError:important",
 subjectPositionLabel: function() {
   return this.getPath('game.labels')[subject_position];
 }.property('game', 'subject_position'),
 computerPositionLabel: function() {
   return this.getPath('game.labels')[computer_position];
 }.property('game', 'computer_position')

})


