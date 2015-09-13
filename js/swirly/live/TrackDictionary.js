#pragma once

#include "swirly/util/Error.js"
#include "swirly/live/ParseInfo.js"
#include "swirly/live/PropertyMapper.js"

Live.track = function(index) {
    var track = new LiveAPI(
            ['live_set', 'tracks', index]),

        volume = new LiveAPI(
            ['live_set', 'tracks', index, 'mixer_device', 'volume']),

        mapper = Live.propertyMapper({
            level: {object: volume, name: 'value', type: Number},
            mute: {object: track, type: Boolean},
            name: {object: track, type: String},
        });

    mapper.info = function() { return Live.parseInfo(track.info); };
    return mapper;
};

Live.trackDictionary = function() {
    var byName = {},
        byIndex = [],
        trackCount = new LiveAPI('live_set').getcount('tracks');

    for (var i = 0; i < trackCount; ++i) {
        var track = Live.track(i),
            name = track.get('name');
        if (byName[name])
            ERROR('Duplicate track name', name);
        else
            byName[name] = byName;
        byIndex.push(track);
    }

    var info = function() {
        var result = [];
        byIndex.forEach(function(track, index) {
            result.push('  Track ' + String(index));
            result.push(JSON.stringify(track.info()));
            result.push('');
        });
        return result;
    };

    return {byName: byName, byIndex: byIndex, info: info};
};
