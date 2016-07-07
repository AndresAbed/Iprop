$(document).ready(function(){
  $( ".video-overlay" ).click(function() {
    $(this).find("iframe")[0].src += "&autoplay=1";
    $(this).children(":first").fadeOut(800);
  });
})