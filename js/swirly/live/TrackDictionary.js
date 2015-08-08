#pragma once

#include "swirly/util/Dict.js"
#include "swirly/util/Error.js"
#include "swirly/live/live.js"

/** A facade hiding multiple objects containing properties under one object.

    properties is a dictionary that maps the name of a property to a *property
    description* - a dictionary with three fields:

     object: the object which actually holds the property.
     type:   a function that converts the result into the right Javascript type.
     name:   an optional name that overrides the dictionary key.

   Live's Javascript is very sloppy with its outputs, casting everything to a
   string before it hands it back to you, and stringent with its inputs,
   requiring everything to be the right type, which results in the `type` field.
*/
Live.PropertyMapper = function(properties) {
    var getter = Dict.getter(properties, 'PropertyMapper');

    this.get = function(name) {
        var prop = getter(name);
        return prop.type(prop.object.get(prop.name || name));
    };

    this.set = function(name, value) {
        var prop = getter(name);
        return prop.object.set(prop.name || name, prop.type(value));
    };

    this.has = function(name) {
        return name in properties;
    };
};

Live.track = function(index) {
    var track = new LiveAPI(
            ['live_set', 'tracks', index]),

        volume = new LiveAPI(
            ['live_set', 'tracks', index, 'mixer_device', 'volume']),

        mapper = new Live.PropertyMapper({
            level: {object: volume, name: 'value', type: Number},
            mute: {object: track, type: Boolean},
            name: {object: track, type: String},
        });

    mapper.info = function() { return track.info.split('\n'); };
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
        var result = ['--> Tracks:'];
        byIndex.forEach(function(track, index) {
            result.push('----> track ' + String(index));
            result.push(track.info);
            result.push('');
        });
        return result;
    };

    return {byName: byName, byIndex: byIndex, info: info};
};

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
