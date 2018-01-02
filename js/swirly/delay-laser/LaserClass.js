#pragma once

#include "swirly/laser/Laser.js"

Laser.Class = function(display, index, minTime, maxTime) {
    function timestring(time) {
        var ms = Math.floor(time * 1000)
        return time < 1 ? ms + ' ms' : (ms / 1000) + ' s';
    };

    display.message(index, 'channel', 1 + index * 16);

    this.blackout = function(blackout) {
        var value = blackout ? 0 : 0xFF;
        display.message(index, 'blackout', value);
        display.message(index, 'raw', Laser.channels.mode, value);
    };

    this.setTime = function(time) {
        display.message(index, 'time', 1000 * time);
        display.message(index, 'timestring', timestring(time));
    };

    this.send = function(channel, value) {
        display.message(index, 'pipe', channel, value);
    };

    this.setTime(0);
    this.blackout(0xFF);
};
