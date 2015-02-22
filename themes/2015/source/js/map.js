(function(){
  'use strict';

  // Find the element
  var canvas = document.getElementById('map-canvas');

  // Set position
  var position = new google.maps.LatLng(25.174721, 121.450300);

  // Load map
  var map = new google.maps.Map(document.getElementById('map-canvas'), {
    center: position,
    zoom: 17,
    mapTypeId: google.maps.MapTypeId.ROADMAP,
    scrollwheel: false,
    mapTypeControl: false,
    streetViewControl: false,
    styles: [
      // Global styles
      {
        stylers: [
          {invert_lightness: true},
          {hue: '#676164'},
          {saturation: -40},
          {lightness: 8}
        ]
      },
      // Hide poi (point of interest)
      {
        featureType: 'poi',
        stylers: [
          {visibility: 'off'}
        ]
      }
    ]
  });

  // Add markers
  var marker = new google.maps.Marker({
    position: position,
    map: map,
    title: '淡江大學活動中心'
  });
})();