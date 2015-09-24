#pragma once

#include "swirly/util/ForEach.js"

var Scene = {};

/** Scenes have two phases.

In the construction phase, they are given a show, and arguments needed to
describe them - in other words, they are a Show Operator.

This is the point where they precalculate, retrieve lights from
the setup and all that stuff.

The result of this is a function that is run in the second phase - the scene
actually goes off "on request" and effects a change to the show.

This is now called a FunctionList!
*/

Scene.makeEach = function(show, args, makerTable) {
    return applyEachObj(args, function(arg, name) {
        var maker = makerTable[name];
        if (!maker)
            throw 'Don\'t understand scene named ' + name;

        var result = maker(show, arg);
        result.name = name;
        result.value = arg;
        return result;
    });
};

Scene.setter = function(trackName, propName) {
    return function(show, value) {
        var track = show.live.tracks[trackName];
        return function() {
            track.set(propName, value);
        };
    };
};
