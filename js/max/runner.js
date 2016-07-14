autowatch = 1;
outlets = 1;

#include "swirly/util/logging.js"

Logging.setLogging(!true);

#include "swirly/max/inlets.js"
#include "swirly/show/FireRunner.js"

var _RUNNER = Show.FireRunner();

Max.ObjectInlets(_RUNNER);

PRINT_MESSAGE_ON_LOAD();
