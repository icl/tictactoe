TTT.TileView = SC.View.extend({
  classNameBindings: ['classnames',
                      'isDisabled:disabled',
                     'content.hasNoMoves:info', 
                      'content.hasComputerMove:danger',
                      'content.hasSubjectMove:success'
                      
          
                        ],
  isDisabled: function(){ return this.content.get('used') }.property(),
  classnames: "btn  btile",
  templateName: "TTT.TileView",
  mouseDown: function(event) {
    this.content.game.MoveHistory.registerMove( this.content, event  );
    return false;
  }
});
