(function(){
  'use strict';

  var container = document.getElementById('countdown');
  var digits = container.getElementsByClassName('countdown-digit');
  var target = new Date('2015-03-28T09:00:00+08:00').getTime();

  var DURATION_SECOND = 1000;
  var DURATION_MINUTE = DURATION_SECOND * 60;
  var DURATION_HOUR = DURATION_MINUTE * 60;
  var DURATION_DAY = DURATION_HOUR * 24;

  var digit0 = digits[0];
  var digit1 = digits[1];
  var digit2 = digits[2];
  var digit3 = digits[3];
  var digit4 = digits[4];
  var digit5 = digits[5];
  var digit6 = digits[6];
  var digit7 = digits[7];

  function countdown(){
    var now = Date.now();
    var duration = target - now;
    if (duration < 0) return;

    var days = (duration / DURATION_DAY) | 0;
    var hours = (duration / DURATION_HOUR % 24) | 0;
    var minutes = (duration / DURATION_MINUTE % 60) | 0;
    var seconds = (duration / DURATION_SECOND % 60) | 0;

    render(days, digit0, digit1);
    render(hours, digit2, digit3);
    render(minutes, digit4, digit5);
    render(seconds, digit6, digit7);

    setTimeout(countdown, 1000);
  }

  function render(num, digitA, digitB){
    if (num < 10){
      digitA.innerHTML = '0';
    } else {
      digitA.innerHTML = String((num / 10) | 0);
    }

    digitB.innerHTML = String(num % 10);
  }

  countdown();
})();