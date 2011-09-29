TTT.TileView = SC.View.extend({
  classNameBindings: ['classnames', 'isDisabled:disabled'],
  isDisabled: function(){ return this.content.get('used') }.property(),
  classnames: "btn primary btile",
  templateName: "TTT.TileView",
  mouseDown: function(event) {
    console.warn(event);
    this.content.game.MoveHistory.createMove( this.content.position, 'human', this.content, event.timeStamp  );
  }
});
