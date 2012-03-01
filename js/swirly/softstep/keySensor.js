#ifndef __SWIRLY__SOFTSTEP__KEYSENSOR
#define __SWIRLY__SOFTSTEP__KEYSENSOR

#include "swirly/softstep/softstep.js"

Softstep.sensorsPerPad = 4;
Softstep.firstSensor = 40;
Softstep.lastSensor = 86;
Softstep.keyList = [5, 0, 6, 1, 7, 2, 8, 3, 9, 4, 'Nav'];

Softstep.CCToKeySensor = function(cc, origin) {
  post(cc, '\n');
  if (cc < Softstep.firstSensor || cc > Softstep.lastSensor || cc in [84, 85]) {
    post('ERROR: Bad softstep cc', cc, '\n');
    return ['bad', cc];
  }

  if (cc == Softstep.lastSensor)
    return ['Pedal', origin];

  var sensor = cc % 4;

  var index = Math.floor((cc - Softstep.firstSensor) / Softstep.sensorsPerPad);
  var key = Softstep.keyList[index];
  if (key != 'Nav')
    key += origin;

  return [key, sensor + origin];
};

#endif  // __SWIRLY__SOFTSTEP__KEYSENSOR
