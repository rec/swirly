#pragma once

#include "swirly/windmapper/BarSync.js"

/**

A list of [time, controller dictionary].
Controller can be one number or it can be a list of numbers.

*/

function Sequence(sequence) {
    return BarSync(function(show, time, scratch) {
        scratch.index = scratch.index || 0;
        for (; scratch.index < sequence.length; ++scratch.index) {
            var s = sequence[scratch.index];
            if (s[0] > time)
                return;
            var lights = s[1];
            if (lights) {
                for (var i in lights)
                    show._dmxoutput(parseInt(i), lights[i]);
            } else {
                show._clear();
            }
        };
    });
};
