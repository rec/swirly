#pragma once

#include "swirly/scene/VL.js"
#include "swirly/scene/Scene.js"

// Show.partMaker = {
//     vl: function(args) {
//         return Util
//         var program = args.program && Program(args.program),
//             mute = args.pro

//         return function(show) [
//             program && program(show);

//         };
//     },
// };

Show.Scene = function(show, args) {
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
