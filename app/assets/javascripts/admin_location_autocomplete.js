function initialize() {
  var input = document.getElementById('property_location');
  var options = {componentRestrictions: {country: 'ar'}};
  new google.maps.places.Autocomplete(input, options);
}
google.maps.event.addDomListener(window, 'load', initialize);