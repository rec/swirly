#pragma once

#include "swirly/scene/Scene.js"
#include "swirly/scene/Channel.js"
#include "swirly/show/VLProgram.js"

Scene.makeScenes = function(show) {
    var makers = {
        mic: Scene.channel('mic'),

        vl70: Scene.channel('vl70'),

        program: VL.programMaker,

        lights: function(show, args) {
            return applyEachArray(args, function(light, name) {
                var instrument = show.lights[name],
                    output = instrument.output,
                    scene = instrument.definition.makeScene(light);

                return function() {
                    scene.forEach(output);
                };
            });
        },

        processor: function(show, args) {
            forEach(show.processors[args], function(listeners, name) {
                show.callbackTable[name] = listeners;
            });
        },

        tempo: function(show, args) {
            return function() {
                show.live.tempo.set(args);
            };
        },
    };

    return applyEachObj(show.json.scenes, function(args, name) {
        print('makeScenes', args, name);
        var scenes = Scene.makeEach(show, args, makers);
        return Dict.sequence(Dict.flatten(scene));
    });
};

Scene.printScenes = function(scenes) {
    print('Scenes');
    forEachSorted(scenes, function(scene, name) {
        print('  ' + name + ':');
        forEachSorted(scene, function(subscene, subname) {
            print('    ' + subname + ':');
        });
    });
    print();
};
