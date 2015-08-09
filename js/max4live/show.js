autowatch = 1;
outlets = 0;

#include "swirly/live/Environment.js"
#include "swirly/live/TrackDictionary.js"
#include "swirly/util/logging.js"
#include "swirly/util/print.js"

function anything() {
    var env = new Live.Environment();

    if (true) {
        env.info().forEach(function(s) {
            post(s, '\n');
            // track 1. output_rootings.
        });
    } else {
        maxLog('!!! ', typeof(env.tracks));
        maxLog('!!! ', env.tracks.length);
        // maxLog('!!! ' , env.tracks[0].get('output_routings'));
    }
}

LOADED();
