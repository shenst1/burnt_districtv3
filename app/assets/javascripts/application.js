//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap-material-design
//= require turbolinks
//= require_tree .

$(function () {
  $('[data-toggle="tooltip"]').tooltip();
  $('[data-toggle="popover"]').popover();
  function navigation() {
    // If it's an iPhone..
    if( (navigator.platform.indexOf("iPhone") != -1)
        || (navigator.platform.indexOf("iPod") != -1)
        || (navigator.platform.indexOf("iPad") != -1))
         window.open("maps://maps.google.com/?saddr=96+Columbia+St&daddr=Burnt+District+Salon+&+Spa");
    else
         window.open("https://maps.google.com/?saddr=96+Columbia+St&daddr=Burnt+District+Salon+&+Spa");
  }
  $( "#Map" ).on( "click", function() {
    navigation();
  });
})
