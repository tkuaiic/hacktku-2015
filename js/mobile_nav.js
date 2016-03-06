(function(){
  'use strict';

  var body = document.getElementsByTagName('body')[0];
  var navToggle = document.getElementById('mobile-nav-toggle-wrap');
  var container = document.getElementById('container');
  var dimmer = document.getElementById('mobile-nav-dimmer');
  var CLASS_NAME = 'mobile-nav-on';

  navToggle.addEventListener('click', function(e){
    e.preventDefault();
    e.stopPropagation();
    body.classList.toggle(CLASS_NAME);
  });

  dimmer.addEventListener('click', function(e){
    if (!body.classList.contains(CLASS_NAME)) return;

    e.preventDefault();
    body.classList.remove(CLASS_NAME);
  });

  document.getElementById('mobile-nav-list').addEventListener('click', function(e){
    if (!e.target.classList.contains('mobile-nav-link')) return;

    e.preventDefault();
    body.classList.remove(CLASS_NAME);
    container.scrollTop = document.getElementById(e.target.hash.substring(1)).offsetTop;
  });
})();