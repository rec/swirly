autowatch = 1;
outlets = 1;

#include "swirly/util/logging.js"

Logging.setLogging(false);

#include "swirly/max/inlets.js"
#include "swirly/lighter/lighter.js"

Lighter.LIGHTER = Lighter.Lighter();

Max.ObjectInlets(Lighter.LIGHTER);

PRINT_MESSAGE_ON_LOAD();
