#ifndef __SWIRLY__SOFTSTEP__KEYSENSOR
#define __SWIRLY__SOFTSTEP__KEYSENSOR

#include "swirly/softstep/softstep.js"

Softstep.Sensor = function(output) {
  var self = this;
  self.origin = 1;

  var sensorsPerPad = 4;
  var firstSensor = 40;
  var lastSensor = 86;
  var keyList = [5, 0, 6, 1, 7, 2, 8, 3, 9, 4, 'nav'];

  self.MidiIn = function(midi) {
    var cc = midi[0], value = midi[1], key, sensor = 0;
    if (cc < firstSensor || cc > lastSensor || (cc in [84, 85])) {
      post("swirly/softstep/sensor.js: Don't understand controller", cc, '\n');
      return;
    }

    if (cc == lastSensor) {
      key = 'pedal';
    } else {
      var index = Math.floor((cc - firstSensor) / sensorsPerPad);
      key = keyList[index];
      sensor = cc % 4;
    }

    if (key != 'nav')
      key += self.origin;

    output(key, sensor + self.origin, value);
  };

  self.Clear = function() {
  };
};

#endif  // __SWIRLY__SOFTSTEP__KEYSENSOR
