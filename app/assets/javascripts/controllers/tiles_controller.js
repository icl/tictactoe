TTT.TilesController = SC.ArrayProxy.extend({
  content: [],
  createTile: function(position, game) {
    var tile = TTT.Tile.create({ position: position, game:game});
    this.pushObject(tile);
  }
});


