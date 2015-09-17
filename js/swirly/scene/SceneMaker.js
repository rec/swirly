#pragma once

#include "swirly/scene/Scene.js"
#include "swirly/scene/Channel.js"
#include "swirly/show/VLProgram.js"

Scene.makeScenes = function(show) {
    return applyEachObj(show.scenes, function(args) {
        var scenes = Scene.makeEach(show, args, Scene.makers);
        return Dict.sequence(Dict.flatten(scene));
    });
};

Scene.makers = {
    mic: Scene.channel('mic'),
    vl70: Scene.channel('vl70'),
    program: VL.programMaker,
};

Scene.makers.lights = function(show, args) {
    return applyEachArray(args, function(light, name) {
        var instrument = show.lights[name],
            output = instrument.output,
            scene = instrument.definition.makeScene(light);

        return function() {
            scene.forEach(output);
        };
    });
};

Scene.makers.processor = function(show, args) {
    forEach(show.processors[args], function(listeners, name) {
        show.callbackTable[name] = listeners;
    });
};

Scene.makers.tempo = function(show, args) {
    return function() {
        show.live.tempo.set(args);
    };
};
