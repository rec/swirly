#pragma once

#include "swirly/laser/Laser.js"

Laser.Class = function(index, minTime, maxTime) {
    var display = Max.find('display' + (index + 1));
    function logRatio(min, max, steps) {
        var logMin = Math.log(minTime),
            logMax = Math.log(maxTime),
            ratio = (logMax - logMin) / (steps - 1);
        return Math.exp(ratio);
    };

    minTime = minTime or 0.01;
    maxTime = maxTime or 10

        ratio = logRatio(minTime, maxTime, 128),
        dialToTime = [0],
        isLinear = true,
        time = 0;

    while (dialToTime.length < 127) {
        if (isLinear) {
            var exp = time * ratio,
                linear = time + minTime;
            if (exp <= linear) {
                time = linear;
            } else {
                isLinear = false;
                var steps = (128 - dialToTime.length);
                ratio = logRatio(time, maxTime, steps);
                time *= ratio;
            }
        } else {
            time *= ratio;
        }
        dialToTime.push(time);
    }

    function timestring(time) {
        var ms = Math.floor(time * 1000)
        return time < 1 ? ms + ' ms' : (ms / 1000) + ' s';
    };

    display.message('offset', 1 + index * 16);

    this.blackout = function(dmx, blackout) {
        var value = blackout ? 0 : 0xFF;
        display.message('enable', !value)
        display.message('raw', Laser.channels.mode, value);
    };

    this.setTime = function(value) {
        var time = dialToTime[value];
        display.message('time', time);
        display.message('timestring', timestring(time));
    };

    this.send = function(channel, value) {
        display.message('pipe', channel, value);
    };
};
