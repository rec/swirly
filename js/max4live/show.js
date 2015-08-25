autowatch = 1;
outlets = 0;

#include "swirly/max/inlets.js"
#include "swirly/live/Environment.js"
#include "swirly/live/TrackDictionary.js"
#include "swirly/util/logging.js"
#include "swirly/util/print.js"

function anything() {
    var env = new Live.Environment();

    if (true) {
        env.info().forEach(function(s) {
            post(s, '\n');
            // track 1. output_routings.
        });
    } else {
        var track = new LiveAPI(['live_set', 'tracks', 0]);
        var or = track.get('output_routings');
        maxLog(typeof(or), or, or.length);
    }
}

LOADED();
