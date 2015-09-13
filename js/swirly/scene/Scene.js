#pragma once

#include "swirly/util/ForEach.js"

var Scene = {};

Scene.makeEach = function(show, args, makerTable) {
    return applyEach(args, function(arg, name) {
        return makerTable[name](show, arg);
    });
};

Scene.muter = function(track, muted) {
    muted = muted ? 1 : 0;
    return function() {
        track.set('mute', muted);
    };
};

Scene.setter = function(trackName, propName) {
    return function(show, value) {
        var track = show.tracks[trackName];
        return function() {
            track.set(propName, value);
        };
    };
};
