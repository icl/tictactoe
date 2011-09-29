TTT.Tile = SC.Object.extend({
  position: 0,
  row: function(){
     return this.game ? Math.ceil( this.position / this.game.dimension) : '?' ; 
  }.property(),
  column: function(){
    return this.game ?  this.game.column_labels[(this.position % this.game.dimension === 0? this.game.dimension : this.position % this.game.dimension )] : '?';
  }.property(),
  labelString: function(){ 
    
    if ( this.position > 0 ) {
      
      return this.get('column') + this.get('row');
    }
   }.property('row', 'column'),

   used: false
});
