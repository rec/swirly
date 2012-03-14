#ifndef __CONTROLLER
#define __CONTROLLER

#include "swirly/softstep/enable.js"
#include "swirly/softstep/sensor.js"
#include "swirly/softstep/led.js"
#include "swirly/softstep/display.js"
#include "swirly/util/addCommands.js"
#include "swirly/util/dict_utils.js"

#include "swirly/util/print.js"

Softstep.Controller = function(midiin, midiout, command) {
  var parts = {
    display: new Softstep.Display(midiout),
    enable: new Softstep.Enable(midiout),
    led: new Softstep.LED(midiout),
    sensor: new Softstep.Sensor(command)
  };

  this.Init = function() {
    midiout('SSCOM Port 1');
    midiin('SSCOM Port 1');

    parts.enable.Tether('off');
    parts.enable.Standalone('on');
  };

  this.Origin = function(origin) {
    for (var p in parts)
      parts[p].origin = origin;
  };

  this.Clear = function() {
    for (var p in parts)
      parts[p].Clear();
  };

  this.Origin(1);

  var commands = Util.addCommands(parts.display, parts.enable, parts.led, this);
  this.commandNames = Util.Dict.GetKeys(commands).sort().join(', ');

  this.Command = function(commandMessage) {
    var name = commandMessage.shift();
    var cmd = commands[name];
    if (cmd)
      cmd.apply(this, commandMessage);
    else
      post("Didn't understand command '" + name  + '"\n');
  };

  this.MidiIn = parts.sensor.MidiIn;
};

#endif  // __CONTROLLER
