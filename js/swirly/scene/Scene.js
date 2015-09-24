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
    if (!Object.keys(makerTable).length)
        throw 'Empty maker table for ' + args;

    return applyEachObj(args, function(arg, name) {
        var maker = makerTable[name];
        if (!maker)
            throw 'Don\'t understand scene named ' + name;

        var result = maker(show, arg);
        if (!result) {
            print('!!', toLoggable(Object.keys(makerTable)));
            print('!!', toLoggable(name));
            print('!!', toLoggable(show));
            print('!!', toLoggable(arg));
        }
        result.name = name;
        result.value = arg;
        return result;
    });
};

Scene.setter = function(trackName, propName) {
    return function(show, value) {
        print(trackName, toLoggable(show));
        var track = show.live.tracks[trackName];
        return function() {
            track.set(propName, value);
        };
    };
};
