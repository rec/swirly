#pragma once

#include "swirly/instrument/Instrument.js"
#include "swirly/util/Dict.js"
#include "swirly/util/Range.js"

Instrument.Definition = function(args) {
    /** Scenes are described as "scene dictionaries", human-readable
        dictionaries looking like {"color": "red", "pattern": "circle"},
        and then are rendered into "scene arrays" with one number for each
        channel and good defaults, like [192, 0, 64, 64, 64, 64, 64, 64]. */
    if (! args.channels)
        throw 'No channels in Instrument.Definition!';
    var self = this,
        names = args.names || {},
        defaults = [],
        splits = {},
        nameToChannel = Dict.invert(args.channels);


    forEach(args.channels, function(channel) {
        defaults.push((args.defaults && args.defaults[channel]) || 0);
    });

    var blackout = args.blackout || defaults,
        test = args.test || defaults;

    forEach(args.splits || {}, function(range, split) {
        args.channels.forEach(function(channel) {
            splits[channel + '_' + split]
                = [new Range(range[0], range[1]), channel];
        });
    });

    /** Map an incoming [channel, value], where the channel which might be a
        name or the name of a split, and call the output function with them. */
    this.map = function(channelIn, valueIn, output) {
        var valueOut = valueIn,
            channelOut = channelIn;

        if (typeof(valueOut) !== 'number')
            valueOut = names[channel][valueOut];

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
        if (channelOut === undefined)
            throw 'Don\'t understand channel ' + channel;
        output(channelOut, valueOut);
    };

    /** Take the default scene, and then map everything in the scene dictionary
        over it. */
    this.scene = function(sceneDict) {
        var scene = defaults.slice(),
            setter = Dict.setter(scene);
        Dict.forEach(sceneDict, function(v, c) {
            self.map(c, v, setter);
        });

        return scene;
    };

    /** Send the scene to an output - a dmxusbpro or a DMXRouter. */
    this.emitScene = function(sceneDict, output) {
        self.scene(sceneDict).forEach(function(value, index) {
            output(index, value);
        });
    };

    /** Send the test scene. */
    this.test = function(output) {
        self.emitScene(test, output);
    };

    /** Send a blackout. */
    this.blackout = function(output) {
        self.emitScene(blackout, output);
    };
};
