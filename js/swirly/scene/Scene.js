#pragma once

#include "swirly/util/ForEach.js"

var Scene = {};

Scene.makeEach = function(show, args, makerTable) {
    return applyEach(args, function(arg, name) {
        return makerTable[name](show, arg);
    });
};

Scene.setter = function(trackName, propName) {
    return function(show, value) {
        var track = show.tracks[trackName];
        return function() {
            track.set(propName, value);
        };
    };
};
