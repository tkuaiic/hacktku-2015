(function($){
  'use strict';

  var container = $('#countdown');
  var target = new Date('2016-04-03T15:00:00+08:00').getTime();
  var digitLen = 6;
  var digits = new Array(digitLen);
  var prevDigits = new Array(digitLen);

  var DURATION_SECOND = 1000;
  var DURATION_MINUTE = DURATION_SECOND * 60;
  var DURATION_HOUR = DURATION_MINUTE * 60;

  function countdown(){
    var now = Date.now();
    var duration = target - now;
    if (duration < 0) return;

    var hours = (duration / DURATION_HOUR) | 0;
    var minutes = (duration / DURATION_MINUTE % 60) | 0;
    var seconds = (duration / DURATION_SECOND % 60) | 0;

    updateDigit(0, (hours / 10) | 0);
    updateDigit(1, hours % 10);
    updateDigit(2, (minutes / 10) | 0);
    updateDigit(3, minutes % 10);
    updateDigit(4, (seconds / 10) | 0);
    updateDigit(5, seconds % 10);

    setTimeout(countdown, 1000);
  }

  function updateDigit(i, current){
    if (prevDigits[i] === current) return;

    var digit = digits[i];
    var children = digit.children();
    prevDigits[i] = current;

    children.removeClass('prev');
    children.filter('.current').addClass('prev').removeClass('current');
    children.eq(current).addClass('current');
  }

  for (var i = 0; i < digitLen; i++){
    var element = digits[i] = $(document.createElement('div')).addClass('countdown-digit');

    for (var j = 0; j < 10; j++){
      var digit = $(document.createElement('div')).addClass('countdown-digit-item').html(j);
      element.append(digit);
    }

    container.append(element);
  }

  countdown();
})(jQuery);
