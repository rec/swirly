#pragma once

#include "swirly/laser/Laser.js"

/**
   We want the time knobs to feel logarithmic, so we precompute a table of
   exponentially increasing times for each of the 128 different values we can
   get from a knob.

   In fact, a pure exponential level would show no motion at all at the lower
   end of the knob, so the output value increases linearly one step at a time
   until the exponential takes over.
*/

Laser.dialTimes = function(minStep, maxTime, steps) {
    minStep = minStep || 0.01;
    maxTime = maxTime || 10;
    steps = steps || 128;

    var ratio = 1,
        time = 0,
        times = [time];

    for (var linearTime = 0, expTime = 0; linearTime >= expTime;) {
        linearTime = time + minStep;
        if (time) {
            ratio = Math.pow(maxTime / time, 1 / (steps - times.length));
            expTime = time * ratio;
        }
        time = Math.max(linearTime, expTime);
        times.push(time);
    }

    while (times.length < steps) {
        time = time * ratio;
        times.push(time);
    }

    return times;
};
