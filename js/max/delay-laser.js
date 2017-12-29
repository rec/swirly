autowatch = 1;
outlets = 0;

#include "swirly/util/logging.js"

Logging.setLogging(!true);

#include "swirly/delay-laser/DelayLaser.js"
#include "swirly/max/inlets.js"

var LASER = new Laser.DelayLaser();

Max.SetInlets(['cc', LASER.controller, 'Continuous controller']);
Max.SetInlets(['all_off', LASER.allOff, 'Turn all lasers off']);

PRINT_MESSAGE_ON_LOAD();
