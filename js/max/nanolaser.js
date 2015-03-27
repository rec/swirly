autowatch = 1;
outlets = 0;

#include "swirly/util/logging.js"

Logging.setLogging(!true);

#include "swirly/laser/Nano.js"
#include "swirly/max/inlets.js"

var NANO = new Laser.Nano();

Postln('test', new Array(9));

Max.SetInlets(['cc', NANO.receiveController, 'Continuous controller']);

LOADED();
