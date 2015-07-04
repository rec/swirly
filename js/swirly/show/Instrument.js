#pragma once

#include "swirly/util/Dict.js"
#include "swirly/util/Range.js"

var Instrument = {};

Instrument.Description = function(args) {
    if (!args.channels)
        throw 'Instrument.Description: must have a channels argument.';

    var defaults = args.defaults || {},
        names = args.names || {},
        nameToChannel = Util.invertArray(args.channels),
        dmxRange = new Range(0, 255),
        splits = {};

    Dict.forEach(args.splits || {}, function(range, split) {
        splits[split] = {
            range: new Range(range.begin || 0, range.end || 255),
            source: range.source
        };
    });

    this.remap = function(dict, keepExisting) {
        var result = keepExisting ? {} : Dict.Copy(defaults);

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

            if (channel in splits) {
                var range = splits[channel];
                channelOut = range.source;
                valueOut = range.range.select(dmxRange.ratio(value));
            }

            if (!dmxRange.contains(valueOut))
                throw 'Value "' + value + '" out of range: channel=' + channel;

            channelOut = nameToChannel[channelOut];
            if (channelOut === undefined)
                throw 'Don\'t understand channel ' + channel;

            result[channelOut] = valueOut;
        });

        return result;
   };
};

Instrument.Instrument = function(desc, start, show, multislider) {
    this.state = [];
    var self = this;

    function out = function(channel, value) {
        multislider.message('set', [channel, value]);
        show._dmxoutput(channel + start, value);
    };

    this.update = function(dict, keepExisting) {
        dict = desc.remap(dict || {}, keepExisting);
        Dict.forEach(dict, function send(value, channel) {
            if (self.state[channel] !== value) {
                self.state[channel] = value;
                out(parseInt(channel), value);
            }
        });
    };

    this.update();

    this.setState = function(state) {
        if (this.state !== state) {
            this.state = state;
            this.state.forEach(out);
        }
    };
};
