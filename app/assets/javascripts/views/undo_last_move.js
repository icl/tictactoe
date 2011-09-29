TTT.UndoLastMoveView = SC.View.extend({
  click: function(event) {
    console.warn(this);
    this.content.undoLastMove();
    return false;
  }
});
