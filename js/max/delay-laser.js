autowatch = 1;
outlets = 1;

#include "swirly/util/logging.js"

Logging.setLogging(!true);

#include "swirly/delay-laser/DelayLaser.js"
#include "swirly/max/inlets.js"

var LASER = new Laser.DelayLaser();

Max.SetInlets(['cc', LASER.controller, 'Continuous controller'],
              ['allOff', LASER.allOff, 'Turn all lasers off']);

PRINT_MESSAGE_ON_LOAD();
