#pragma once

#include "swirly/util/Dict.js"
#include "swirly/util/Error.js"
#include "swirly/live/PropertyMapper.js"
#include "swirly/live/TrackDictionary.js"

/** A class with everything from live reachable from it. */
Live.Environment = function() {
    var self = this,

        tracks = Live.trackDictionary().byName,

        liveSet = new LiveAPI('live_set'),

        propertyMapper = Live.propertyMapper({
            tempo: {object: liveSet, type: Number},
            is_playing: {object: liveSet, type: Boolean},
        });

    function info() {
        return ['LiveSet']
            .concat(liveSet.info.split('\n'))
            .concat(['', 'Tracks'])
            .concat(tracks.info());
    };

    return {
        tracks: tracks,
        info: info,
        liveSet: propertyMapper,
    };
};

Live.printEnvironment = function(env) {
    print('Live.Environment');
    print('  tracks:');
    forEachObj(env.tracks, function(track, name) {
        print('    ' + name);
    });
    print('  properties:');
    Live.printPropertyManager(env.liveSet, '  ');
    print();
};
