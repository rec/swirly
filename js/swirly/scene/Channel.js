#pragma once

#include "swirly/scene/Scene.js"

Scene.channel = function(name) {
    return {
        mute: Scene.setter(name, 'mute'),
        level: Scene.setter(name, 'level'),
        // send: {}, // TODO
    });
};
