#pragma once

#include "swirly/scene/Channel.js"
#include "swirly/show/VLProgram.js"

Scene.VL = {};

Scene.VL.maker = Scene.channel('vl70', {
    program: function(show, name) {
        var program = VL.getProgram(name),
            bank = program[0],
            pc = program[1],
            object = show.objects.maxclass.unpack;

        return function() {
            object.message(bank, pc);
        };
    },
});
