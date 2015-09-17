#pragma once

#include "swirly/scene/Scene.js"
#include "swirly/scene/Channel.js"
#include "swirly/instrument/Lights.js"
#include "swirly/show/VLProgram.js"

Scene.makeScene = function(show, args) {
    var scenes = Scene.makeEach(show, args, Scene.makerTable);
    return Dict.sequence(Dict.flatten(scenes));
};

Scene.makerTable = {
    lights: Instrument.makeLights,

    mic: Scene.channel('mic'),

    vl70: Scene.channel('vl70'),

    program: VL.programMaker,

    processor: function(show, args) {
        // TODO: processors must install themselves.
        return show.processors[args];
    },

    tempo: function(show, args) {
        return function() { show.live.tempo.set(args); };
    },
});
