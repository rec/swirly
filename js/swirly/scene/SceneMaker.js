#pragma once

#include "swirly/scene/Scene.js"
#include "swirly/scene/Channel.js"

Scene.makeScene = function(show, args) {
    var scenes = Scene.makeEach(show, args, Scene.makerTable);
    return Dict.compose(Dict.flatten(scenes));
};

Scene.makerTable = {
    lights: function(show, args) {
        var lights =
    },

    mic: Scene.channel('mic'),
    vl70: Scene.channel('vl70'),

    program: function(show, args) {
        var program = VL.getProgram(args),
            bank = program[0],
            pc = program[1],
            object = show.objects.maxclass.unpack;
        // TODO: make sure unpack is the right object.

        return function() {
            object.message(bank, pc);
        };
    },

    processor: function(show, args) {
        // TODO: processors must install themselves.
        return show.processors[args];
    },

    tempo: function(show, args) {
        return function() {
            show.live.tempo.set(args);
        };
    },
});
