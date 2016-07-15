#pragma once

#include "swirly/lights/Lights.js"
#include "swirly/object/Dict.js"
#include "swirly/util/Range.js"

Lights.makeDefinition = function(desc) {
    /** Scenes are described as "scene dictionaries", human-readable
        dictionaries looking like {"color": "red", "pattern": "circle"},
        and then are rendered into "scene arrays" with one number for each
        channel and good defaults, like [192, 0, 64, 64, 64, 64, 64, 64]. */
    if (! desc.channels)
        throw 'No channels in Lights.Definition!';

    var names = desc.names || {},
        nameToChannel = Dict.invert(desc.channels),
        presets = {},
        splits = {};
    forEach(desc.splits || {}, function(range, split) {
        var splitRange = new Range(range[0], range[1]);
        channels.forEach(function(channel) {
            var name = channel + '_' + split,
                scale = Range.DMX.jsonConverter(splitRamge);
            splits[name] = {channel: channel, scale: scale};
        });
    });

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

    var zeroes = Dict.fillArray(desc.channels.length, 0),
        defaultPreset = desc.presets && desc.presets.defaults && {};
    presets.defaults = makeScene(defaultPreset, zeroes);
    Dict.forEach(desc.presets, function(preset, name) {
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
