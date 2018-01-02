#pragma once

#include "swirly/laser/Laser.js"

Laser.Class = function(max, index, minTime, maxTime) {
    function timestring(time) {
        var ms = Math.floor(time * 1000)
        return time < 1 ? ms + ' ms' : (ms / 1000) + ' s';
    };

    max.display.message(index, 'channel', 1 + index * 16);

    this.blackout = function(blackout) {
        var value = blackout ? 0xbf : 0;
        max.display.message(index, 'blackout', value);
        max.display.message(index, 'raw', [Laser.channels.mode, value]);
    };

    this.setTime = function(time) {
        max.display.message(index, 'time', 1000 * time);
        max.display.message(index, 'timestring', timestring(time));
        max.times.message('set', index + 1, time);
    };

    this.send = function(channel, value) {
        max.display.message(index, 'pipe', channel, value);
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
