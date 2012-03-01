#ifndef __SWIRLY__SOFTSTEP__KEYSENSOR
#define __SWIRLY__SOFTSTEP__KEYSENSOR

#include "swirly/softstep/softstep.js"

Softstep.sensorsPerPad = 4;
Softstep.firstSensor = 40;
Softstep.lastSensor = 86;
Softstep.keyList = [6, 1, 7, 2, 8, 3, 9, 4, 10, 5, 'Nav'];

Softstep.CCToKeySensor = function(cc, value) {
  post(cc, value, '\n');
  if (cc < Softstep.firstSensor || cc > Softstep.lastSensor || cc in [84, 85]) {
    post('ERROR: Bad softstep cc', cc, '\n');
    return ['bad', cc, 0];
  }

  if (cc == Softstep.lastSensor)
    return ['Pedal', 0, value];

  var index = Math.floor((cc - Softstep.firstSensor) / Softstep.sensorsPerPad);
  var key = "" + Softstep.keyList[index];
  var sensor = cc % 4;

  return [key, sensor, value];
};

#endif  // __SWIRLY__SOFTSTEP__KEYSENSOR
