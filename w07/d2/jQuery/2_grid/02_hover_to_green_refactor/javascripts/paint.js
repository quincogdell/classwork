var Paint = Paint || {};

Paint.generateTiles = function(numTiles, width, height) {
  for (var i=0; i<numTiles; i++) {
    var $tile = $("<div/>") // NEW, note that I am aching the tile so that jQuery doesn't need to look it up later
      .css("width", width)
      .css("height", height)
      .addClass("tile");

    Paint.addEventListeners($tile) // NEW, the event listeners are now added inside of here, passing $tile so that I don't need to find it again

    $("body").append($tile);
  }
}


// NEW
// the entire below code is refactored to take in $tile
Paint.addEventListeners = function($tile) {
  $tile.on("mouseover", function(e){
    $tile.addClass("highlighted")
  });

  $tile.on("mouseout", function(e){
    $tile.removeClass("highlighted")
  });


}
