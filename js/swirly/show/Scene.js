#pragma once

#include "swirly/show/VLProgram.js"

var Scene = {};

/** Every scene is is a function that returns either a pure function or an array
    of functions. */
Scene.make = function(show) {
    function makeEach(args, makerTable) {
        return applyEachObj(args, function(desc, name) {
            var maker = makerTable[name];
            if (!maker)
                throw 'Don\'t understand scene named ' + name;

            var result = maker(show, desc);
            result.name = name;
            result.desc = desc;
            return result;
        });
    };

    function setter(trackName, propName) {
        return function(show, value) {
            var track = show.live.tracks[trackName];
            return function() {
                track.set(propName, value);
            };
        };
    };

    function channel(name) {
        return function(show, args) {
            return makeEach(args, {
                mute: setter(name, 'mute'),
                level: setter(name, 'level'),
            });
        };
    };

    return applyEachObj(show.json.scenes, function(args, name) {
        var scenes = makeEach(args, {
            mic: channel('mic'),
            vl70: channel('vl70'),
            program: VL.makeScene,
            lights: Lights.makeScene,
            processor: Processor.makeScene,
            tempo: Live.makeTempoScene,
        });
        return Dict.sequence(Dict.flatten(scenes));
    });
};

Scene.print = function(scenes) {
    print('Scenes');
    forEachSorted(scenes, function(scene, name) {
        print('  ' + name + ':');
        forEachSorted(scene, function(subscene, subname) {
            print('    ' + subname + ':');
        });
    });
    print();
};
