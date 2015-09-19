#pragma once

#include "swirly/util/ForEach.js"

var Scene = {};

/** Scenes have two phases.

In the construction phase, they are given a show, and arguments needed to
describe them.  This is the point where they precalculate, retrieve lights from
the setup and all that stuff.

The result of this is a function that is run in the second phase - the scene
actually goes off "on request" and effects a change to the show.
*/

Scene.makeEach = function(show, args, makerTable) {
    return applyEachObj(args, function(value, name) {
        return {action: makerTable[name](show, value, name),
                name: name,
                value: value};
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
