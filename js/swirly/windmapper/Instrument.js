#pragma once

#include "swirly/util/dict_utils.js"

function Instrument(channels, start, names, defaults) {
    var nameToChannel = Util.invertArray(channels),
        self = this,
        defaultValues = {};

    for (var i = 0; i < channels.length; ++i)
        defaultValues[i] = defaults[channels[i]] || 0;

    this.channel = function(channel) {
        var chan = nameToChannel[channel];
        if (chan === undefined)
            throw 'Instrument.channel: Don\'t understand channel ' + name;
        return chan + start;
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
        var result = Util.Dict.Copy(defaultValues);
        for (var channel in dict)
            result[self.channel(channel)] = self.value(dict[channel]);
        return result;
    };
};
