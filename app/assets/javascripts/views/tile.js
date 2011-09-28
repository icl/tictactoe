TTT.TileView = SC.View.extend({
  classNameBindings: ['classnames', 'isDisabled:disabled'],
  isDisabled: function(){ content.get('used') },
  classnames: "btn primary btile",
  templateName: "TTT.TileView",
  mouseDown: function(event) {
    console.warn(event);
    TTT.MovesController.createMove( this.content.position, 'human', this.content, event.timeStamp  );
  }
});
