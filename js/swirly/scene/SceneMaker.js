#pragma once

#include "swirly/scene/Scene.js"
#include "swirly/show/VLProgram.js"

#if 0
Scene.sceneMaker = Scene.maker({
    lights: Scene.setLights,

    mic: Scene.channel('mic'),

    program: VL.programMaker,

    processor: function(show, args) {
        show.processors[args]();
    },

    tempo: function(show, args) {
        show.live.tempo.set(args);
    },

    vl70: Scene.channel('vl70'),
});
#endif
