#pragma once

#include "swirly/scene/Scene.js"
#include "swirly/util/Dict.js"

Scene.channel = function(name, args) {
    return Dict.union(args || {}, {
        mute: Scene.setter('vl70', 'mute'),
        level: Scene.setter('vl70', 'level'),
        // send: {}, // TODO
    });
};
