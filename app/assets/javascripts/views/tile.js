TTT.TileView = SC.View.extend({
  classNameBindings: ['classnames', 'isDisabled:disabled'],
  isDisabled: function(){ return this.content.get('used') }.property(),
  classnames: "btn primary btile",
  templateName: "TTT.TileView",
  mouseDown: function(event) {
    this.content.game.MoveHistory.registerMove( this, event  );
  }
});
