#pragma once

#include "swirly/windmapper/BarSync.js"

/**

A list of [time, controller dictionary].
Controller can be one number or it can be a list of numbers.

*/

function Loop(sequence, length, loops) {
    return BarSync(function(show, time, scratch) {
        var loopCount = Math.floor(time / length);
        if (!loops || loopCount <= loops)
            sequence(show, time - loopCount * length, scratch);
    };
};
