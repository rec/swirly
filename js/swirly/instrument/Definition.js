#pragma once

#include "swirly/instrument/Instrument.js"
#include "swirly/util/Dict.js"
#include "swirly/util/Range.js"

Instrument.Definition = function(args) {
    var self = this,
        channels = args.channels,
        names = args.names || {},
        defaults = [],
        splits = {};
        nameToChannel = Util.invertArray(args.channels);

#ifndef NO_CHECKING
    if (!channels)
        throw 'Instrument.Description: must have a channels argument.';
#endif

    args.channels.forEach(function(value) {
        defaults.push(args.defaults[value] || 0);
    });

    Dict.forEach(args.splits || {}, function(range, split) {
        splits[split] = {
            range: new Range(range.begin || 0, range.end || 255),
            source: range.source
        };
    });

    this.map = function(channel, value) {
        var valueOut = value,
            channelOut = channel;

        if (typeof(valueOut) !== 'number') {
#ifndef NO_CHECKING
            if (!(channel in names))
                throw 'Instrument.value: ' + channel + ' accepts no names.';
#endif

            valueOut = names[channel][valueOut];
#ifndef NO_CHECKING
            if (valueOut === undefined)
                throw ('Instrument.value: Don\'t understand named value ' +
                       value + ' for channel ' + channel);
#endif
        }

        if (channelOut in splits) {
            var range = splits[channelOut];
            channelOut = range.source;
            valueOut = range.range.select(dmxRange.ratio(value));
        }

#ifndef NO_CHECKING
        if (!Range.DMX.contains(valueOut))
            throw 'Value "' + value + '" out of range: channel=' + channel;
#endif

        channelOut = nameToChannel[channelOut];
#ifndef NO_CHECKING
        if (channelOut === undefined)
            throw 'Don\'t understand channel ' + channel;
#endif
        return [channelOut, valueOut];
    };

    this.scene = function(dict) {
        var scene = defaults.slice();
        Dict.forEach(dict, function(value, channel) {
            var r = self.map(channel, value);
            scene[r[0]] = r[1];
        });

        return scene;
    };

    this.emitScene = function(dict, offset, dmx) {
        self.scene(dict).forEach(function(value, index) {
            dmx(index + offset, value);
        });
    };
};
