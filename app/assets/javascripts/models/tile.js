TTT.Tile = SC.Object.extend({
  position: 0,
  labelString: function(){
   return this.getPath('game.labels')[this.get('position')];
   }.property('position', 'game'),

   used: false
});
