#pragma once

#include "swirly/laser/Laser.js"

Laser.Class = function(max, index, minTime, maxTime) {
    var self = this,
        state = {
            blackout: 0,
            time: 0,
            channelValue: {},
        };

    function timestring(time) {
        var ms = Math.floor(time * 1000)
        return time < 1 ? ms + ' ms' : (ms / 1000) + ' s';
    }

    function setChannelValue(channel, value) {
        state.channelValue[channel] = value;
        max.displays.message(index, 'pipe', channel, value);
    }

    this.setBlackout = function(blackout, allOff) {
        blackout = blackout ? 0xbf : 0;
        state.blackout = blackout;
        var address = allOff ? 'raw' : 'pipe';
        max.displays.message(index, 'pipe', Laser.channels.mode, blackout);
        max.displays.message(index, 'blackout', blackout);
    };

    this.setTime = function(time) {
        state.time = time;
        max.displays.message(index, 'time', 1000 * time);
        max.displays.message(index, 'timestring', timestring(time));
        max.times.message('set', index + 1, time);
    };

    this.reset = function() {
        self.setTime(0);
        for (var channel = 0; channel < 9; ++channel)
            self.setChannelValue(channel, 0);
        self.setBlackout(0);
    };

    this.serialize = function() {
        // Deep copy the current state.
        var channelValue = {};
        for (var c in state.channelValue)
            channelValue[c] = state.channelValue[c];
        return {
            blackout: state.blackout,
            time: state.time,
            channelValue: channelValue,
        };
    };

    this.deserialize = function(newState) {
        for (var k in newState) {
            var v = newState[k];
            if (k == 'blackout')
                self.blackout(v);
             else if (k == 'time')
                self.setTime(v);
            else if (k == 'channelValue')
                self.setChannelValue(v);
            else
                Logging.log('Did not understand key', k)
        }
    };

    max.displays.message(index, 'channel', 1 + index * 16);
    this.reset();
};
