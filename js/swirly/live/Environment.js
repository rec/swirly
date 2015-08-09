#pragma once

#include "swirly/util/Dict.js"
#include "swirly/util/Error.js"
#include "swirly/live/TrackDictionary.js"

/** A class with everything from live reachable from it. */
Live.Environment = function() {
    this.tracks = Live.trackDictionary();

    var liveSet = new LiveAPI('live_set');
    this.liveSet = new Live.PropertyMapper({
        tempo: {object: liveSet, type: Number},
        is_playing: {object: liveSet, type: Boolean},
    });

    this.info = function() {
        return ['LiveSet']
            .concat(liveSet.info.split('\n'))
            .concat(['', 'Tracks'])
            .concat(this.tracks.info());
    };
};
