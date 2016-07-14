autowatch = 1;
outlets = 1;

#include "swirly/live/Property.js"
#include "swirly/util/logging.js"

function bang() {
    Live.ListenToProperty('clip', function(value) {
        if (value >= 0) {
            var name = Live.GetProperty('clipname', value);
            outlet(0, name);
        }
    });
};

PRINT_MESSAGE_ON_LOAD();
