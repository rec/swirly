autowatch = 1;
outlets = 0;

#include "swirly/live/TrackDictionary.js"
#include "swirly/util/logging.js"

var env = new Live.Environment();

function anything() {
    env.info().forEach(function(s) {
        post(s, '\n');
    });
};

LOADED();
