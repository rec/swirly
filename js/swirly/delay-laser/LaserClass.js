#pragma once

#include "swirly/laser/Laser.js"

Laser.Class = function(display, index, minTime, maxTime) {
    function timestring(time) {
        var ms = Math.floor(time * 1000)
        return time < 1 ? ms + ' ms' : (ms / 1000) + ' s';
    };

    display.message(index, 'channel', 1 + index * 16);

    this.blackout = function(blackout) {
        var value = blackout ? 0xbf : 0;
        display.message(index, 'blackout', value);
        display.message(index, 'raw', [Laser.channels.mode, value]);
    };

    this.setTime = function(time) {
        display.message(index, 'time', 1000 * time);
        display.message(index, 'timestring', timestring(time));
    };

    this.send = function(channel, value) {
        display.message(index, 'pipe', channel, value);
    };

    var self = this;
    this.reset = function() {
        self.setTime(0);
        for (var channel = 0; channel < 9; ++channel)
            self.send(channel, 0);
        self.blackout(0);
    };

    this.reset();
};
