#pragma once

#include "swirly/show/VLProgram.js"

var Scene = {};

Scene.make = function(show) {
    function tableMaker(makerTable) {
        return function(desc, name) {
            var maker = makerTable[name];
            if (!maker)
                throw 'Don\'t understand maker named ' + name;
            var result = maker(show, desc);
            result.name = name;
            if (result.desc === undefined)
                result.desc = desc;
            return result;
        };
    }

    function makeEach(makerTable, desc) {
        return applyEachObj(desc, tableMaker(makerTable));
    }

    function track(trackName) {
        function setter(propertyName) {
            return function(show, desc) {
                var track = show.live.tracks[trackName];
                function set() {
                    track.set(propertyName, desc);
                }
                return describe(set, desc);
            };
        };

        function operation(show, desc) {
            return makeEach(show, desc, {
                mute: setter('mute'),
                level: setter('level'),
            });
        };

        return describe(operation, name);
    };


    var makerTable = tableMaker(show, {
        mic: channel('mic'),
        vl70: channel('vl70'),
        program: VL.makeScene,
        lights: Lights.makeScene,
        processor: Processor.makeScene,
        tempo: Live.makeTempoScene,
    };

    return applyEachObj(show.json.scenes, function(desc, name) {
        var parts = Dicti.values(makeEach(desc, makerTable)),
            flat = Dicti.flatten(parts),
            seq = Dicti.sequence(flat);
        return describe(seq, flat);
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
