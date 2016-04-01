(function(){
  'use strict';

  var container = document.getElementById('countdown');
  var digitLen = 4;
  var digits = new Array(digitLen);
  var target = new Date('2016-04-02T09:00:00+08:00').getTime();

  var DURATION_SECOND = 1000;
  var DURATION_MINUTE = DURATION_SECOND * 60;
  var DURATION_HOUR = DURATION_MINUTE * 60;
  var DURATION_DAY = DURATION_HOUR * 24;

  function countdown(){
    var now = Date.now();
    var duration = target - now;
    if (duration < 0) return;

    var days = (duration / DURATION_DAY) | 0;
    var hours = (duration / DURATION_HOUR % 24) | 0;
    var minutes = (duration / DURATION_MINUTE % 60) | 0;
    var seconds = (duration / DURATION_SECOND % 60) | 0;

    digits[0].innerHTML = formatNumber(days);
    digits[1].innerHTML = formatNumber(hours);
    digits[2].innerHTML = formatNumber(minutes);
    digits[3].innerHTML = formatNumber(seconds);

    setTimeout(countdown, 1000);
  }

  function formatNumber(num){
    return num < 10 ? '0' + num : num + '';
  }

  // Insert elements
  for (var i = 0; i < digitLen; i++){
    var element = digits[i] = document.createElement('div');
    element.className = 'countdown-digit';
    container.appendChild(element);
  }

  // Display countdown
  container.style.display = 'block';

  // Start counting
  countdown();
})();
