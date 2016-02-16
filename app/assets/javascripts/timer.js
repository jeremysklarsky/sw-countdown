$( document ).ready(function() {
  
  this.el = $(this);
  var $years = this.el.find('#years');
  var $days = this.el.find('#days');
  var $hours = this.el.find('#hours');
  var $minutes = this.el.find('#minutes');
  var $seconds = this.el.find('#seconds');
  var days = $days.text();
  var hours = $hours.text();
  var seconds = $seconds.text();
  var minutes = $minutes.text();
  var years = $years.text();

  startCountdown();

  function startCountdown() {
    setInterval(function() {
      tickDown();
    }, 1000);
  }

  function tickDown() {
    seconds = seconds - 1;

    if (seconds < 0) {
      seconds = 59;
      lowerMinutes();
    }
    render();
  }

  function lowerMinutes() {
    minutes = minutes - 1;
    if (minutes < 0) {
      lowerHours();
    }
  }

  function lowerHours() {
    hours = hours - 1;
    if (hours < 0) {
      lowerDays();
    }
  }

  function lowerDays() {
    days = days - 1;
    if (days < 0) {
      years = years - 1;
    }
  }


  function render() {
    $days.text(days);
    $hours.text(hours);
    $minutes.text(minutes);
    $seconds.text(seconds);
    $years.text(years);
  }

});