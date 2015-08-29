#pragma once

#include "swirly/instrument/Instrument.js"
#include "swirly/util/Dict.js"
#include "swirly/util/Range.js"

Instrument.Definition = function(args) {
    var self = this,
        names = args.names || {},
        defaults = [],
        splits = {},
        nameToChannel = Util.invertArray(args.channels),
        blackout;

    args.channels.forEach(function(channel) {
        defaults.push(args.defaults[channel] || 0);
    });

    var blackout = args.blackout || defaults;

    Dict.forEach(args.splits || {}, function(range, split) {
        args.channels.forEach(function(channel) {
            splits[channel + '_' + split]
                = [new Range(range[0], range[1]), channel];
        });
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
            channelOut = range[0];
            valueOut = range[1].select(Range.DMX.ratio(value));
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

    this.test = function(offset, dmx) {
        Args.test && self.emitScene(args.test, offset, dmx);
    };
};
