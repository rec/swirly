#ifndef __CONTROLLER
#define __CONTROLLER

#include "swirly/softstep/enable.js"
#include "swirly/softstep/keySensor.js"
#include "swirly/softstep/led.js"
#include "swirly/softstep/scroller.js"
#include "swirly/util/print.js"

Softstep.origin = 1;

Softstep.Controller = function(output) {
  var self = this;

  function scrollerOutput(s) {
    s += '    ';
    for (var i = 0; i < 4; ++i)
      output.midiout(176, 50 + i, s.charCodeAt(i));
  };


  self.scroller = new Softstep.Scroller(scrollerOutput);
  self.led = new Softstep.LED(output.midiout, self);
  self.enable = new Softstep.Enable(output.midiout);
  self.origin = 1;
  self._commands = {};

  function addCommands(_) {
    var names = [];
    for (var i = 0; i < arguments.length; ++i) {
      var object = arguments[i];
      for (var name in object) {
        var member = object[name];
        if (typeof(member) == 'function' && name[0] != '_') {
          name = name.toLowerCase();
          names.push(name);
          self._commands[name] = member;
        }
      }
    }
    return names.sort().join(', ');
  };

  self.Init = function() {
    output.midiout('SSCOM Port 1');
    output.midiin('SSCOM Port 1');

    self.enable.Tether('off');
    self.enable.Standalone('on');
  };

  self.Origin = function(origin) {
    self.origin = origin;
  };

  self.commands = addCommands(self.scroller, self.led, self.enable, self);

  self.Command = function(command) {
    var cmd = self._commands[command[0]];
    if (cmd)
      cmd.apply(this, command.slice(1));
    else
      post("Didn't understand command '" + command + '"\n');
  };

  self.MidiIn = function(cc) {
    post('midiin!', Print(cc), '\n');
    var sensor = Softstep.CCToKeySensor(cc[0], self.origin);
    output.command.apply(this, sensor.concat(cc[1]));
  };
};

#endif  // __CONTROLLER
