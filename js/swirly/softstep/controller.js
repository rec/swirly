#ifndef __CONTROLLER
#define __CONTROLLER

#include "swirly/softstep/scroller.js"
#include "swirly/softstep/sysex.js"

Softstep.Controller = function(output) {
/*
  Max.ListOut.softstep(['led', 'all', 'off'],
                       ['el', 'off'],
                       ['display', '   ']);
*/
  var leastInterval = 1000;
  var queue = [];
  var that = that;

  that.Out = function(command) {
    function callback() {
      queue.shift();
      if (queue.length())
        output(queue[0]);
      else
        arguments.callee.task.cancel();
    };

    queue.push(command);
    if (queue.length == 1) {
      output(command);
      var task = new Task(callback);
      task.interval = leastInterval;
      task.schedule(leastInterval);
    }
  };

  that.Display = function(s) {
    s += '    ';
    for (var i = 0; i < 4; ++i)
      that.Out(['cc', 50 + i, s.charCodeAt(i)]);
  };

  var colors = {green: 0, red: 1, yellow: 2};
  var states = {off: 0, on: 1, blink: 2, fast: 3, flash: 4};

  that.RawButton = function(button, color, state) {
    that.Out(['cc', 40, button]);
    that.Out(['cc', 41, colors[color] || 0]);
    that.Out(['cc', 42, states[state] || 0]);
  };

  that.Button = function(button, color, state) {
    if (color != 'yellow')
      that.RawButton(button, (color == 'red') ? 'green' : 'red', 'off');
    that.RawButton(button, color, state);
  };

  that.ButtonAll = function(color, state) {
    that.RawButton(127, color, state);
  };

  that.Enable = function(item, enabled) {
    var sysex = Softstep.sysex[item];
    if (sysex)
      that.Out(enable ? sysex.on : sysex.off);
    else
      post("Didn't understand Enable", item, '\n');
  };

  that.scroller = new Softstep.Scroller({output: that.Out});

  that.Out(['midiport', 'SSCOM Port 1']);
  that.Enable('tether', true);
  that.Enable('standalone', false);
};

#endif  // __CONTROLLER
