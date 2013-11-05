var Paint = Paint || {};

Paint.generateTiles = function(numTiles, width, height) {
  for (var i=0; i<numTiles; i++) {
    var $tile = $("<div/>")
      .css("width", width)
      .css("height", height)
      .addClass("tile");

    Paint.addEventListeners($tile)

    $("body").append($tile);
  }
}

Paint.addEventListeners = function($tile) {
  $tile.on("mousemove", function(e){ // NEW: note that I used a mousemove because
                                     // when say mouseover was used, if I just clicked on one of the tiles,
                                     // it did not register.

    console.log(e.timestamp)
    $tile.addClass("highlighted");

    var LEFT_MOUSE_BUTTON_DOWN = 1;

    if (e.which == LEFT_MOUSE_BUTTON_DOWN) { //NEW
                                             // to determine if the left mouse button is being held down when the mosed is moved on an object
      $tile.addClass("painted");
    }

  });

  $tile.on("mouseout", function(e){
    $tile.removeClass("highlighted");
  });


  $tile.on("click", function(e){
    $tile.addClass("painted");
  })

}
