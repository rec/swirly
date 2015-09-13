autowatch = 1;
outlets = 0;

#include "swirly/show/ShowRunner.js"
#include "swirly/util/logging.js"

var _showRunner = new ShowRunner();

LOADED();

function bang() {
    _showRunner.setup();
}
