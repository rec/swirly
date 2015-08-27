#pragma once

#include "swirly/instrument/Instrument.js"
#include "swirly/util/Assert.js"
#include "swirly/util/Dict.js"
#include "swirly/util/Range.js"

Instrument.Definition = function(args) {
    var channels = args.channels,
        names = args.names || {},
        defaults = [],
        splits = {};
        nameToChannel = Util.invertArray(args.channels);

    if (!channels)
        throw 'Instrument.Description: must have a channels argument.';

    args.channels.forEach(function(value) {
        defaults.push(args.defaults[value] || 0);
    });

    Dict.forEach(args.splits || {}, function(range, split) {
        splits[split] = {
            range: new Range(range.begin || 0, range.end || 255),
            source: range.source
        };
    });

    this.map = function(dict) {
        result = defaults.slice();
        Dict.forEach(dict, function(value, channel) {
            var valueOut = value,
                channelOut = channel;

            if (typeof(valueOut) !== 'number') {
                if (!(channel in names))
                    throw 'Instrument.value: ' + channel + ' accepts no names.';

                valueOut = names[channel][valueOut];
                if (valueOut === undefined)
                    throw ('Instrument.value: Don\'t understand named value ' +
                           value + ' for channel ' + channel);
            }

            if (channelOut in splits) {
                var range = splits[channelOut];
                channelOut = range.source;
                valueOut = range.range.select(dmxRange.ratio(value));
            }

            if (!Range.DMX.contains(valueOut))
                throw 'Value "' + value + '" out of range: channel=' + channel;

            channelOut = nameToChannel[channelOut];
            if (channelOut === undefined)
                throw 'Don\'t understand channel ' + channel;
            result[channelOut] = valueOut;
        });

        return result;
    };

};
