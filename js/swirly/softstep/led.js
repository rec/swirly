#ifndef __SOFTSTEP__LED
#define __SOFTSTEP__LED

#include "swirly/softstep/softstep.js"

Softstep.LED = function(output) {
  var self = this;

  self.colors = {green: 0, red: 1, yellow: 2};
  self.states = {off: 0, on: 1, blink: 2, fast: 3, flash: 4};
  self.output = output;

  function rawOutput(led, color, state) {
    self.output('cc', 40, led == 'all' ? 127 : led);
    self.output('cc', 41, self.colors[color]);
    self.output('cc', 42, self.states[state]);
    self.output('cc', 0, 0);
    self.output('cc', 0, 0);
    self.output('cc', 0, 0);
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

  // Set a given state and guarantee that the other states are off.
  self.Led = function(led, color, state) {
    if (check(color, state)) {
      if (color == 'red')
        rawOutput(button, 'green', 'off');
      else if (color == 'green')
        rawOutput(button, 'red', 'off');

      rawOutput(button, color, state);
    }
  };
};

#endif  // __SOFTSTEP__LED
