#pragma once

#include "swirly/laser/Laser.js"
#include "swirly/object/Dicti.js"

Laser.Class = function(displays, index) {
    var self = this,
        data = {channelValues: {}};

    self.active = true;

    if (!displays)
        throw new Error('No display');

    function timestring(time) {
        var ms = Math.floor(time * 1000)
        return time < 1 ? ms + ' ms' : (ms / 1000) + ' s';
    }

    this.setChannelValues = function(channelValues) {
        Dicti.forEach(channelValues || {}, function(value, channel) {
            self.setChannelValue(channel, value);
        });
    }

    this.setChannelValue = function(channel, value) {
        data.channelValues[channel] = value;
        displays.message(index, 'pipe', channel, value);
    };

    this.setBlackout = function(blackout, allOff) {
        var rawOrPipe = allOff ? 'raw' : 'pipe',
            value = blackout ? 0xbf : 0;
        data.blackout = !!blackout;

        displays.message(index, rawOrPipe, Laser.channels.mode, value);
        displays.message(index, 'blackout', value);
    };

    this.setActive = function(active) {
        var resend = active && !self.active;
        self.active = !!active;
        if (resend)
            self.resend();

        displays.message(index, 'active', self.active);
    };

    this.setTime = function(time) {
        data.time = time || 0;

        displays.message(index, 'time', 1000 * data.time);
        displays.message(index, 'timestring', timestring(data.time));
        displays.message(index, 'timeslider', data.time);
    };

    this.resend = function() {
        self.deserialize(data);
    };

    this.reset = function() {
        self.deserialize({});
    };

    this.deserialize = function(newData) {
        if (newData.blackout)
            self.setBlackout(true);
        self.setChannelValues(newData.channelValues);
        self.setTime(newData.time);
        if (!newData.blackout)
            self.setBlackout(false);
    };

    this.serialize = function() {
        return {
            blackout: data.blackout,
            channelValues: Dicti.Copy(data.channelValues),
            time: data.time,
        };
    };

    this.randomize = function() {
        self.setBlackout(Math.random() > 0.5);
        Dicti.forEach(Laser.channels, function(channel, name) {
            if (name != 'mode')
                self.setChannelValue(channel, Math.floor(256 * Math.random()));
        });
    };

    self.reset();
};
