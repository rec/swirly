#ifndef __SOFTSTEP__LED
#define __SOFTSTEP__LED

#include "swirly/softstep/softstep.js"

Softstep.LED = function(output, hasOrigin) {
  var self = this;

  self.colors = {green: 0, red: 1, yellow: 2};
  self.states = {off: 0, on: 1, blink: 2, fast: 3, flash: 4};

  function rawOutput(value, color, state) {
    output(176, 40, value);
    output(176, 41, self.colors[color]);
    output(176, 42, self.states[state]);
    output(176, 0, 0);
    output(176, 0, 0);
    output(176, 0, 0);
  };

  function check(color, state) {
    if (self.colors[color] === null)
      post("Don't understand color '" + color + "'\n");
    else if (self.states[state] == null)
      post("Don't understand state '" + state + "'\n");
    else
      return true;

    return false;
  };

  function ledToCCValue(led) {
    return (led == 'all') ? 127 : (led - hasOrigin.origin);
  };

  // Set a given state and guarantee that the other states are off.
  self.Led = function(led, color, state) {
    if (check(color, state)) {
      var value = ledToCCValue(led);
      if (color == 'red')
        rawOutput(value, 'green', 'off');
      else if (color == 'green')
        rawOutput(value, 'red', 'off');

      rawOutput(value, color, state);
    }
  };
};

#endif  // __SOFTSTEP__LED
