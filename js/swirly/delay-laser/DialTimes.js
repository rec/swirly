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

    var ratio,
        time = 0,
        times = [time],
        i = 0;

    for (;; i++) {
        var linear = time + minStep,
            logMax = Math.log(maxTime),
            logLinear = Math.log(linear),
            logRatio = (logMax - logTime) / (steps - i - 1),
            r = Math.exp(logRatio),
            exp = time * ratio;

        if (linear <= exp) {
            times.push(exp);
            time = exp;
            ratio = r;
            break;
        }
        times.push(linear);
    }

    for (; i < steps - 1; ++i) {
        time = time * ratio;
        times.push(time);
    }

    return times;
};
