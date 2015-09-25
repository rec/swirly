#pragma once

#include "swirly/lights/Lights.js"
#include "swirly/util/Dict.js"
#include "swirly/util/Range.js"

Lights.Definition = function(name, desc) {
    /** Scenes are described as "scene dictionaries", human-readable
        dictionaries looking like {"color": "red", "pattern": "circle"},
        and then are rendered into "scene arrays" with one number for each
        channel and good defaults, like [192, 0, 64, 64, 64, 64, 64, 64]. */
    if (! desc.channels)
        throw 'No channels in Lights.Definition!';

    var names = desc.names || {},
        defaults = [],  // A list of contiguous channels!
        splits = {},
        nameToChannel = Dict.invert(desc.channels);

    desc.channels.forEach(function(channel) {
        defaults.push((desc.defaults && desc.defaults[channel]) || 0);
    });

    forEach(desc.splits || {}, function(range, split) {
        var splitRange = new Range(range[0], range[1]);
        desc.channels.forEach(function(channel) {
            splits[channel + '_' + split] = {
                channel: channel, range: splitRange};
        });
    });

    /** Take the default scene, and then map everything in the scene dictionary
        over it. */
    function makeScene(sceneDict) {
        if (isString(sceneDict))
            return presets[sceneDict];

        var scene = defaults.slice();
        forEach(sceneDict, function(value, channel) {
            var originalChannel = channel,
                channelNames = names[channel],
                split = splits[channel],
                scale = function(v) { return v; };

            channel = nameToChannel[split ? split.channel : channel];
            if (channel === undefined)
                throw 'Don\'t understand channel ' + originalChannel;

            if (channelNames) {
                scale = function(value) {
                    var valueOut = channelNames[value];
                    return valueOut === undefined ? value : valueOut;
                };
            } else if (split) {
                scale = Range.DMX.jsonConverter(split.range);
            }

            scene[channel] = scale(value);
        });

        return scene;
    };

    var presets = {};

    ['blackout', 'test'].forEach(function(preset) {
        var scene = desc[preset];
        presets[preset] = scene ? makeScene(scene) : defaults;
    });


    return {
        makeScene: makeScene,
        name: name,
        preset: Dict.getter(presets, 'Presets'),
    };
};
