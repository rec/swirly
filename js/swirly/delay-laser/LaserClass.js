#pragma once

#include "swirly/laser/Laser.js"

Laser.Class = function(index, minTime, maxTime) {
    function timestring(time) {
        var ms = Math.floor(time * 1000)
        return time < 1 ? ms + ' ms' : (ms / 1000) + ' s';
    };

    var name = 'display' + (1 + index);
    outlet(0, name, 'channel', 1 + index * 16);

    this.blackout = function(dmx, blackout) {
        var value = blackout ? 0 : 0xFF;
        outlet(0, name, 'blackout', value);
        outlet(0, name, 'raw', Laser.channels.mode, value);
    };

    this.setTime = function(time) {
        outlet(0, name, 'time', time);
        outlet(0, name, 'timestring', timestring(time));
    };

    this.send = function(channel, value) {
        outlet(0, name, 'pipe', channel, value);
    };
};
