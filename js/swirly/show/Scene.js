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

        function operation(show, args) {
            return makeEach(args, {
                mute: setter('mute'),
                level: setter('level'),
            });
        };

        return describe(operation, name, 'channel');
    };

    var makerTable = {
        mic: channel('mic'),
        vl70: channel('vl70'),
        program: VL.makeScene,
        lights: Lights.makeScene,
        processor: Processor.makeScene,
        tempo: Live.makeTempoScene,
    };

    return applyEachObj(show.json.scenes, function(desc, name) {
        var parts = Dict.values(makeEach(desc, makerTable)),
            flat = Dict.flatten(parts),
            seq = Dict.sequence(flat);
        return describe(seq, flat, name);
    });
};

Scene.print = function(scenes) {
    print('Scenes');
    forEachSorted(scenes, function(scene, name) {
        print('  ' + name + ':');
        var desc = scene.desc.slice();
        desc.sort(function(a, b) {
            return (a.name < b.name) ? -1 :
                a.name == b.name ? 0 : 1;
        });
        desc.forEach(function(subscene) {
            print('     ' + subscene.name + ': ' + printable(subscene.desc));
        });
    });
    print();
};
