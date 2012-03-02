#ifndef __SOFTSTEP__LED
#define __SOFTSTEP__LED

#include "swirly/softstep/softstep.js"

Softstep.LED = function(output) {
  var self = this;
  self.origin = 1;

  var GREEN = 0, RED = 1, YELLOW = 2;
  var colors = {green: GREEN, red: RED, yellow: YELLOW};

  var OFF = 0, ON = 1, BLINK = 2, FAST = 3, FLASH = 4;
  var states = {off: OFF, on: ON, blink: BLINK, fast: FAST, flash: FLASH};
  var COLOR_SIZE = 3;
  var STATE_SIZE = 5;
  var ALL = 127;

  function check(color, state) {
    if (colors[color] === null)
      post("Don't understand color '" + color + "'\n");
    else if (states[state] == null)
      post("Don't understand state '" + state + "'\n");
    else
      return true;

    return false;
  };

  function outputToLed(led, color, state) {
    output(0xb0, 40, led);
    output(0xb0, 41, color);
    output(0xb0, 42, state);
    output(0xb0, 0, 0);
    output(0xb0, 0, 0);
    output(0xb0, 0, 0);
  };

  function setLed(led, color, state) {
    if (color == RED)
      outputToLed(led, GREEN, OFF);
    else if (color == GREEN)
      outputToLed(led, RED, OFF);

    outputToLed(led, color, state);
  };

  function ledToCCValue(led) {
    return (led == 'all') ? ALL : (led - self.origin);
  };


  // Set a given state and guarantee that the other states are off.
  self.Led = function(led, color, state) {
    if (check(color, state))
      setLed(ledToCCValue(led), colors[color], states[state]);
  };

  self.Clear = function() {
    outputToLed(ALL, GREEN, OFF);
    outputToLed(ALL, RED, OFF);
  };

  self.Randomize = function() {
    function rand(s) {
      return Math.floor(Math.random() * s);
    };

    for (var led = 0; led < 10; ++led)
      setLed(led, rand(COLOR_SIZE), rand(STATE_SIZE));
  };
};

#endif  // __SOFTSTEP__LED
