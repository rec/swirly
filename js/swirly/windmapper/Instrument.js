#pragma once

#include "swirly/util/dict_utils.js"

function Instrument(channels, start, names, defaults) {
    var nameToChannel = Util.invertArray(channels),
        self = this;

    this.channel = function(channel) {
        var chan = nameToChannel[channel];
        if (chan === undefined)
            throw 'Instrument.channel: Don\'t understand channel ' + name;
        return chan;
    };

    this.value = function(channel, value) {
        if (typeof(value) === 'number')
            return value;

        if (!(channel in names))
            throw 'Instrument.value: ' + channel + ' accepts no names.';
        var val = names[channel][value];
        if (val === undefined)
            throw 'Instrument.value: Don\'t understand value ' + value;

        return val;
    };

    this.remap = function(dict) {
        var result = {};
        for (var d in dict)
            result[self.channel(d)] = self.value(dict[d]);
        return result;
    };
};
