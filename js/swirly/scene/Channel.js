#pragma once

#include "swirly/scene/Scene.js"

Scene.channel = function(name) {
    return function(show, args) {
        var makerTable = {
            mute: Scene.setter(name, 'mute'),
            level: Scene.setter(name, 'level'),
            // send: {}, // TODO
        };
        return Scene.makeEach(show, args, makerTable);
    }
};
