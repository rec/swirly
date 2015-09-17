#pragma once

#include "swirly/instrument/Instrument.js"

// Make a light scene.
Instrument.makeLights = function(show, args) {
    return applyEachArray(args, function(light, name) {
        var instrument = show.lights[name],
            output = instrument.output,
            scene = instrument.definition.makeScene(light);

        return function() {
            forEachObject(scene, output);
        };
    });
};
