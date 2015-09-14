#pragma once

#include "swirly/util/ForEach.js"

var Scene = {};

Scene.makeEach = function(show, args, makerTable) {
    return applyEach(args, function(arg, name) {
        return makerTable[name](show, arg);
    });
};

Scene.maker = function(makerTable) {
    return function(show, args) {
        return applyEach(args, function(arg, name) {
            return makerTable[name](show, arg);
        });
        // Scene.makeEach(show, args, makerTable);
    };
};

Scene.makeSequence = function(show, args, makerTable) {
    var all = Scene.makeEach(show, args, makerTable);
    return function() {
        forEach(all, function(f) { f(); });
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
