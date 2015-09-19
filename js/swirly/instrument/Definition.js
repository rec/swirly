#pragma once

#include "swirly/instrument/Instrument.js"
#include "swirly/util/Dict.js"
#include "swirly/util/Range.js"

Instrument.Definition = function(name, args) {
    /** Scenes are described as "scene dictionaries", human-readable
        dictionaries looking like {"color": "red", "pattern": "circle"},
        and then are rendered into "scene arrays" with one number for each
        channel and good defaults, like [192, 0, 64, 64, 64, 64, 64, 64]. */
    if (! args.channels)
        throw 'No channels in Instrument.Definition!';
    var names = args.names || {},
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

     function channelFilter(channel) {
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

    /** Take the default scene, and then map everything in the scene dictionary
        over it. */
    function makeScene(sceneDict) {
        if (sceneDict instanceof String)
            return presets[sceneDict];

        var scene = defaults.slice();
        forEach(sceneDict, function(value, channel) {
            var cf = channelFilter(channel);
            scene[cf.channel] = cf.filter(value);
        });

        return scene;
    };

    var presets = {};

    ['blackout', 'test'].forEach(function(preset) {
        var scene = args[preset];
        presets[preset] = scene ? makeScene(scene) : defaults;
    });


    return {
        channelFilter: channelFilter,
        makeScene: makeScene,
        name: name,
        preset: Dict.getter(presets, 'preset'),
    };
};
