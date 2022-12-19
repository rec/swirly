#pragma once

#include "swirly/lights/Lights.js"
#include "swirly/object/Dicti.js"
#include "swirly/util/Range.js"

Lights.makeDefinition = function(desc, externalPresets) {
    /** Scenes are described as "scene dictionaries", human-readable
        dictionaries looking like {"color": "red", "pattern": "circle"},
        and then are rendered into "scene arrays" with one number for each
        channel and good defaults, like [192, 0, 64, 64, 64, 64, 64, 64]. */
    if (! desc.channels)
        throw 'No channels in Lights.Definition!';

    // For the moment, assume that there no channels with both splits and names.
    var valueNames = desc.value_names || {},
        nameToChannel = Dicti.invert(desc.channels),
        presets = {},
        splits = {},
        zeroes = Dicti.fillArray(desc.channels.length, 0),
        defaultPreset = (desc.presets && desc.presets.defaults) || zeroes;

    forEach(desc.splits || {}, function(range, split) {
        var splitRange = new Range(range[0], range[1]);
        desc.channels.forEach(function(channel) {
            var name = channel + '_' + split,
                scale = Range.DMX.jsonConverter(splitRamge);
            splits[name] = {channel: channel, scale: scale};
        });
    });

    function channelMapper(channel) {
        var originalChannel = channel,
            split = splits[channel],
             channelNumber = nameToChannel[split ? split.channel : channel],
            names = valueNames[channel];

        if (channelNumber === undefined)
            throw 'Don\'t understand channel ' + originalChannel;
        return function(value) {
        };

        var value = channelValue[1],
            names = valueNames[channel];

        if (names) {
            var v = names[value];
            if (v !== undefined)
                ch

            ,

        var v = (names[channel] || {})[value];
        if (v === undefined)
            v = split ? split.scale(value) : value;
        return [channelNumber, v];
    };

    /** Map a human-readable scene dictionary to an executable one.
        If no defaultScene is supplied, uses the defaults. */
    function makeScene(sceneDict, defaultScene) {
        var scene = (defaultScene || presets.defaults).slice();
        forEach(sceneDict, function(value, channel) {
            var split = splits[channel],
                dmxChannel = nameToChannel[split ? split.channel : channel];
            if (dmxChannel === undefined)
                throw 'Don\'t understand channel ' + channel;

            var v = (names[channel] || {})[value];
            if (v === undefined)
                v = split ? split.scale(value) : value;
            scene[dmxChannel] = v;
        });
        return scene;
    };

    presets.defaults = makeScene(defaultPreset, zeroes);
    Dicti.forEach(desc.presets, function(preset, name) {
        if (name != 'defaults')
            presets[name] = makeScene(preset);
    });

    // Now add test and blackout presets, if they don't exist.
    presets.test = presets.test || presets.defaults;
    presets.blackout = preset.blackout || preset.defaults;

    return {
        makeScene: makeScene,
        presets: presets,
        channels: desc.channels,
    };
};
