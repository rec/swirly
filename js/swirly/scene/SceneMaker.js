#pragma once

#include "swirly/scene/Scene.js"
#include "swirly/show/VLProgram.js"

Scene.channel = function(name) {
    return function(show, args) {
        return Scene.makeEach(show, args, {
            mute: Scene.setter(name, 'mute'),
            level: Scene.setter(name, 'level'),
        });
    };
};

/** Every scene is is a function that returns either a pure function or an array
    of functions. */
Scene.make = function(show) {
    var makers = {
        mic: Scene.channel('mic'),
        vl70: Scene.channel('vl70'),
        program: VL.makeScene,
        lights: Lights.makeScene,
        processor: Processor.makeScene,
        tempo: Live.makeTempoScene,
    };

    return applyEachObj(show.json.scenes, function(args, name) {
        var scenes = Scene.makeEach(show, args, makers);
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
