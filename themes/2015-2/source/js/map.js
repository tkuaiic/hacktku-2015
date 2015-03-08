(function(){
  'use strict';

  // Find the element
  var id = 'location-map';
  var canvas = document.getElementById(id);

  // Set position
  var position = new google.maps.LatLng(25.174721, 121.450300);

  // Load map
  var map = new google.maps.Map(document.getElementById(id), {
    center: position,
    zoom: 17,
    mapTypeId: google.maps.MapTypeId.ROADMAP,
    scrollwheel: false,
    mapTypeControl: false,
    streetViewControl: false
  });

  // Add markers
  var marker = new google.maps.Marker({
    position: position,
    map: map,
    title: '淡江大學活動中心'
  });
})();