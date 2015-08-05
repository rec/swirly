#pragma once

#include "swirly/util/Error.js"
#include "swirly/live/live.js"

/** A facade hiding multiple objects containing properties under one. */
Live.PropertyMapper = function(properties) {
    var getter = Dict.getter(properties, 'Property dictionary.');

    this.get = function(name) {
        var prop = getter(name);
        return prop.type(prop.object.get(prop.name || name));
    };

    this.set = function(name, value) {
        var prop = getter(name);
        return prop.object.set(prop.name || name, prop.type(value));
    };
};

Live.Track = function(index) {
    var track = new LiveAPI(
            ['live_set', 'tracks', index]),

        volume = new LiveAPI(
            ['live_set', 'tracks', index, 'mixer_device', 'volume']),

        mapper = new PropertyMapper({
            mute: {object: track, type: Boolean},
            level: {object: volume, name: 'value', type: Number},
            name: {object: track, type: String},
        });
    this.set = mapper.set;
    this.get = mapper.get;
};

Live.TrackDictionary = function() {
    var tracks = {};
    var trackCount = new LiveAPI('live_set').getcount('tracks');
    for (var i = 0; i < trackCount; ++i) {
        var track = new Live.Track(i),
            name = track.get('name');
        if (tracks[name])
            ERROR('Duplicate track name', name);
        else
            tracks[name] = track;
    }

    return tracks;
};

Live.Environment
