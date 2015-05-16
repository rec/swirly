outlets = 0;
autowatch = 1;

#include "swirly/max/inlets.js"
#include "swirly/util/logging.js"
#include "swirly/windmapper/ShowRunner.js"

var _show_runner = new ShowRunner();

Max.ObjectInlets(_show_runner);

LOADED();
