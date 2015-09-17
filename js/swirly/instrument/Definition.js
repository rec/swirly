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
        defaults = [],  // A list of contiguous channels!
        splits = {},
        nameToChannel = Dict.invert(args.channels);

    args.channels.forEach(function(channel) {
        defaults.push((args.defaults && args.defaults[channel]) || 0);
    });

    forEach(args.splits || {}, function(range, split) {
        var splitRange = new Range(range[0], range[1]);
        args.channels.forEach(function(channel) {
            splits[channel + '_' + split] = {
                channel: channel, range: splitRange};
        });
    });

    self.channelFilter = function(channel) {
        var originalChannel = channel,
            channelNames = names[channel],
            split = splits[channel],
            filter = function(v) { return v; };

        channel = nameToChannel[split ? split.channel : channel];
        if (channel === undefined)
            throw 'Don\'t understand channel ' + originalChannel;

        if (channelNames) {
            filter = function(value) {
                var valueOut = channelNames[value];
                return valueOut === undefined ? value : valueOut;
            };
        } else if (split) {
            filter = Range.DMX.jsonConverter(split.range);
        }

        return {channel: channel, filter: filter};
    };

    var presets = {};

    /** Take the default scene, and then map everything in the scene dictionary
        over it. */
    self.makeScene = function(sceneDict) {
        if (sceneDict instanceof String)
            return presets[sceneDict];

        var scene = defaults.slice();
        forEach(sceneDict, function(value, channel) {
            var cf = self.channelFilter(channel);
            scene[cf.channel] = cf.filter(value);
        });

        return scene;
    };

    ['blackout', 'test'].forEach(function(preset) {
        var scene = args[preset];
        presets[preset] = scene ? self.makeScene(scene) : defaults;
    });

    self.preset = Dict.getter(presets, 'preset');
};
