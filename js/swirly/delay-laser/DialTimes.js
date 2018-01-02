#pragma once

#include "swirly/laser/Laser.js"

Laser.dialTimes = function(minStep, maxTime, steps) {
    function logRatio(min, max, s) {
        var logMin = Math.log(min),
            logMax = Math.log(max),
            ratio = (logMax - logMin) / (s - 1);
        return Math.exp(ratio);
    };

    minStep = minStep || 0.01;
    maxTime = maxTime || 10;
    steps = steps || 128;

    var ratio = logRatio(minStep, maxTime, steps),
        times = [0],
        isLinear = true,
        time = 0;

    while (times.length < steps) {
        if (!isLinear) {
            time *= ratio;
        } else {
            var exp = time * ratio,
                linear = time + minStep;

            if (exp <= linear) {
                time = linear;
            } else {
                isLinear = false;
                ratio = logRatio(time, maxTime, steps - times.length);
                time *= ratio;
            }
        }
        times.push(time);
    }

    return times;
};
