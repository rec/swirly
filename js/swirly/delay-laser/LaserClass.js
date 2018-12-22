#pragma once

#include "swirly/laser/Laser.js"
#include "swirly/object/Dict.js"

Laser.Class = function(displays, index) {
    var self = this,
        state = {};

    function timestring(time) {
        var ms = Math.floor(time * 1000)
        return time < 1 ? ms + ' ms' : (ms / 1000) + ' s';
    }

    function setChannelValues(channelValues) {
        Dict.forEach(channelValues || {}, function(value, channel) {
            self.setChannelValue(channel, value);
        });
    }

    this.setChannelValue = function(channel, value) {
        state.channelValues[channel] = value;
        displays.message(index, 'pipe', channel, value);
    };

    this.setBlackout = function(blackout, allOff) {
        state.blackout = !!blackout;
        var rawOrPipe = allOff ? 'raw' : 'pipe',
            value = blackout ? 0xbf : 0;
        displays.message(index, rawOrPipe, Laser.channels.mode, value);
        displays.message(index, 'blackout', value);
    };

    this.setTime = function(time) {
        state.time = time || 0;
        displays.message(index, 'time', 1000 * state.time);
        displays.message(index, 'timestring', timestring(state.time));
        displays.message(index, 'timeslider', state.time);
    };

    this.resend = function() {
        self.setState(state);
    };

    this.reset = function() {
        self.setState({});
    };

    this.setState = function(newState) {
        self.setBlackout(newState.blackout);
        self.setTime(newState.time);
        setChannelValues(newState.channelValues);
    };

    this.getState = function() {
        return {
            blackout: state.blackout,
            time: state.time,
            channelValues: Dict.Copy(state.channelValues),
        };
    };

    self.reset();
}
