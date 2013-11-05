var Paint = Paint || {};

Paint.generateTiles = function(numTiles, width, height) {
  for (var i=0; i<numTiles; i++) {
    var tile = $("<div/>")
      .css("width", width)
      .css("height", height)
      .addClass("tile");

    $("body").append(tile);
  }
}

// NEW, this is where I add the event listeners
Paint.addEventListeners = function() {
  $(".tile").on("mouseover", function(e){
    var tile = $(e.target);
    tile.addClass("highlighted") // note again, that I am adding a class to change it's display
  });

  $(".tile").on("mouseout", function(e){
    var tile = $(e.target);
    tile.removeClass("highlighted") // note again, that I am removing the class now to change it's visual display
  });


}
