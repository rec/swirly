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

            return describe(maker(show, desc), desc, name);
        });
    };

    function channel(name) {
        function setter(propName) {
            return function(show, desc) {
                var track = show.live.tracks[name];
                function set() {
                    track.set(propName, desc);
                }
                return describe(set, desc, propName);
            };
        };

        return function(show, args) {
            return makeEach(args, {
                mute: setter('mute'),
                level: setter('level'),
            });
        };
    };

    var makerTable = {
        mic: channel('mic'),
        vl70: channel('vl70'),
        program: VL.makeScene,
        lights: Lights.makeScene,
        processor: Processor.makeScene,
        tempo: Live.makeTempoScene,
    };

    return applyEachObj(show.json.scenes, function(args, name) {
        var parts = Dict.values(makeEach(args, makerTable));
        return Dict.sequence(Dict.flatten(parts));
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
