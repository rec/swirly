#pragma once

#include "swirly/show/Show.js"
#include "swirly/show/VLPrograms.js"
#include "swirly/util/Error.js"
#include "swirly/util/ForEach.js"


Show.vlPartMaker = {
    program: VLProgramFunction,

    mute: function(m) {
        return function(show) { Show.muteVL(show, m); };
    },

    send: function(s)
};

Show.partMaker = {
    vl: function(args) {
        return Util
        var program = args.program && Program(args.program),
            mute = args.pro

        return function(show) [
            program && program(show);

        };
    },
};

Show.Scene = function(args) {
    /**
       VL70: program change, level, effect send.

       mic: enable, level, effects send.

       WX-7: send to instrument.

       tempo:

       lights:

       processors:

       displays:

    */
    return makeSequence(args, Show.partMaker);
};
