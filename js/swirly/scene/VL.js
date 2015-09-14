#pragma once

#include "swirly/scene/Channel.js"
#include "swirly/show/VLProgram.js"
#include "swirly/util/Dict.js"

Scene.VL = {};

Scene.VL.maker = Dict.union(
    Scene.channel('vl70'),
    {
        program: function(show, args) {
            var program = VL.getProgram(args),
                bank = program[0],
                pc = program[1],
                object = show.objects.maxclass.unpack;

            return function() {
                object.message(bank, pc);
            };
        },
    });
