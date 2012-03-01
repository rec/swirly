#ifndef __CONTROLLER
#define __CONTROLLER

#include "swirly/softstep/enable.js"
#include "swirly/softstep/keySensor.js"
#include "swirly/softstep/led.js"
#include "swirly/softstep/scroller.js"

Softstep.Controller = function(output) {
  var self = this;

  self.scroller = new Softstep.Scroller(output.midiout);
  self.led = new Softstep.LED(output.midiout);
  self.enable = new Softstep.Enable(output.midiout);
  self._commands = {};

  function addCommands(_) {
    var names = [];
    for (var i = 0; i < arguments.length; ++i) {
      var object = arguments[i];
      for (var name in object) {
        names.push(name);
        var member = object[name];
        if (typeof(member) == 'function' && name[0] != '_')
          self._commands[name] = member;
      }
    }
    return names.join(', ');
  };

  self.commands = addCommands(self.scroller, self.led, self.enable);


  self.Initialize = function() {
    output.midiout('midiport', 'SSCOM Port 1');
    output.midiin('midiport', 'SSCOM Port 1');

    self.enable.Tether('on');
    self.enable.Standalone('off');
  };

  self.Command = function(command) {
    var cmd = self._commands[command[0]];
    if (cmd)
      cmd.apply(this, command.substr(1));
    else
      post("Didn't understand command '" + command + '"\n');
  };

  self.MidiIn = function(cc) {
    output.command.apply(this, Softstep.CCToKeySensor(cc[0], cc[1]));
  };
};

#endif  // __CONTROLLER
