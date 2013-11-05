$( document ).ready(function() {
  $('h1').on("click", function(e) {
    $("body").addClass("pink"); // Adding classes are preferrable to changing inline styles
  });
});
