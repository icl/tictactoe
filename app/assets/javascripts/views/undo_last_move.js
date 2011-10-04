TTT.UndoLastMoveView = SC.View.extend({
  click: function(event) {
    this.content.undoLastMove();
    return false;
  }
});
