#ifndef __CONTROLLER
#define __CONTROLLER

#include "swirly/softstep/enable.js"
#include "swirly/softstep/sensor.js"
#include "swirly/softstep/led.js"
#include "swirly/softstep/display.js"
#include "swirly/util/addCommands.js"
#include "swirly/util/Dict.js"

#include "swirly/util/print.js"

Softstep.Controller = function(midiin, midiout, command, usingLH) {
  var parts = {
    display: new Softstep.Display(midiout),
    enable: new Softstep.Enable(midiout),
    led: new Softstep.LED(midiout),
    sensor: new Softstep.Sensor(command)
  };

  var self = this;

  self.Init = function() {
    post('Initializing softstep.\n');
    if (usingLH) {
      midiout('midiport', 'SSCOM Port 1');
      midiin('midiport', 'SSCOM Port 1');
    } else {
      midiout('SSCOM Port 1');
      midiin('SSCOM Port 1');
    }

    parts.enable.Tether('off');
    parts.enable.Standalone('on');
  };

  self.Origin = function(origin) {
    for (var p in parts)
      parts[p].origin = origin;
  };

  self.Clear = function() {
    for (var p in parts)
      parts[p].Clear();
  };

  self.sync = {
    sequence: false,
    items: [],
    color: 'red',
    invert: false,
  };

  self.Sync = function(cmd, val, _) {
    if (cmd === 'sequence')
      self.sync.sequence = true;
    else if (cmd == 'parallel')
      self.sync.sequence = false;
    else if (cmd == 'set')
      self.sync.items = arrayfromargs(arguments).slice(1);
    else if (cmd == 'clear')
      self.sync.items = [];
    else if (cmd == 'color')
      self.sync.color = value;
    else if (cmd == 'invert')
      self.sync.invert = (val != 'off' && val != 0);
    else
      post("Don't understand command: sync ", arrayfromargs(arguments), '\n');
  };

  function SetItemState(name, on) {
    if (self.sync.invert)
      on = !on;
    var state = (on ? 'on' : 'off');
    if (name == 'el')
      parts.enable.El(state);
    else if (name !== 'none')
      parts.led.Led(name, self.sync.color, state);
  };

  self.Beat = function(beat) {
    var len = self.sync.items.length;
    if (len) {
      var isSeq = self.sync.sequence;
      beat = beat % (isSeq ? len : 2);
      for (var i = 0; i < len; ++i)
        SetItemState(self.sync.items[i], isSeq ? (i == beat) : beat);
    }
  };

  self.Origin(1);

  var commands = Util.addCommands(parts.display, parts.enable, parts.led, this);
  self.commandNames = Dict.GetKeys(commands).sort().join(', ');

  self.Command = function(commandMessage) {
    var name = commandMessage.shift();
    var cmd = commands[name];
    if (cmd)
      cmd.apply(this, commandMessage);
    else
      post("Didn't understand command '" + name  + '"\n');
  };

  self.MidiIn = parts.sensor.MidiIn;
};

#endif  // __CONTROLLER
