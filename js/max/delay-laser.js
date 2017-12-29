autowatch = 1;
outlets = 0;

#include "swirly/util/logging.js"

Logging.setLogging(!true);

#include "swirly/delay-laser/DelayLaser.js"
#include "swirly/max/inlets.js"

var laser = new Laser.DelayLaser();

Max.SetInlets(['cc', laser.receiveController, 'Continuous controller']);

PRINT_MESSAGE_ON_LOAD();
