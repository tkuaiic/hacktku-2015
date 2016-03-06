(function(){
  'use strict';

  var container = document.getElementById('container');
  var headerNav = document.getElementById('header-nav');
  var navLinks = document.getElementsByClassName('header-nav-link');
  var indicator = document.getElementById('header-nav-indicator');
  var len = navLinks.length;
  var linkPosition = new Array(len);
  var sections = new Array(len);
  var i;
  var element;
  var id;
  var lastPos = -1;

  for (i = 0; i < len; i++){
    element = navLinks[i];
    id = element.hash.substring(1);

    linkPosition[i] = {
      id: id,
      left: element.offsetLeft + 'px',
      width: element.offsetWidth + 'px'
    };

    sections[i] = document.getElementById(id);
  }

  function onScroll(){
    var scrollTop = container.scrollTop;
    var height = container.offsetHeight;
    var i;

    for (i = 0; i < len; i++){
      if (scrollTop + height / 2 < sections[i].offsetTop) break;
    }

    i--;

    if (lastPos !== -1){
      navLinks[lastPos].classList.remove('on');
    }

    if (i === -1){
      indicator.style.width = 0;
      indicator.style.left = 0;
    } else {
      var link = linkPosition[i];
      indicator.style.width = link.width;
      indicator.style.left = link.left;
      navLinks[i].classList.add('on');
    }

    lastPos = i;
  }

  container.addEventListener('scroll', function(){
    window.requestAnimationFrame(onScroll);
  });

  onScroll();

  // Bind click events
  headerNav.addEventListener('click', function(e){
    if (!e.target.classList.contains('header-nav-link')) return;

    e.preventDefault();
    container.scrollTop = document.getElementById(e.target.hash.substring(1)).offsetTop;
  });
})();