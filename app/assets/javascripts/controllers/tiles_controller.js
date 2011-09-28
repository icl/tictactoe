TTT.TilesController = SC.ArrayProxy.create({
  content: [],
  createTile: function(position) {
    var tile = TTT.Tile.create({ position: position });
    this.pushObject(tile);
  }
});


