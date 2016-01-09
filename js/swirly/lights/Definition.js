#pragma once

#include "swirly/lights/Lights.js"
#include "swirly/object/Dict.js"
#include "swirly/util/Range.js"

Lights.performSplit = function(desc, channels) {
    splits = {};
    forEach(desc, function(range, split) {
        var splitRange = new Range(range[0], range[1]);
        channels.forEach(function(channel) {
            var name = channel + '_' + split;
            splits[name] = {channel: channel, range: splitRange};
        });
    });
    return splits;
};

Lights.makeDefinition = function(desc) {
    /** Scenes are described as "scene dictionaries", human-readable
        dictionaries looking like {"color": "red", "pattern": "circle"},
        and then are rendered into "scene arrays" with one number for each
        channel and good defaults, like [192, 0, 64, 64, 64, 64, 64, 64]. */
    if (! desc.channels)
        throw 'No channels in Lights.Definition!';

    var names = desc.names || {},
        splits = Lights.performSplit(desc.splits, desc.channels),
        nameToChannel = Dict.invert(desc.channels),
        presets = {};

    function applyToScene(scene, value, channel) {
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
    }

    /** Map a human-readable scene dictionary to an executable one.
        If no defaultScene is supplied, uses the defaults. */
    function makeScene(sceneDict, defaultScene) {
        var scene = defaultScene || presets.defaults.slice();
        forEach(sceneDict || {}, function(value, channel) {
            applyToScene(scene, value, channel);
        });
        return scene;
    };

    var defaults = Dict.duplicateValue(desc.channels.length, 0);
    presets.defaults = makeScene(desc.presets.defaults, defaults);
    forEachObject(desc.presets, function(preset, name) {
        if (name != 'defaults')
            presets[name] = makeScene(preset);
    });

    return {
        makeScene: makeScene,
        presets: presets,
        channels: desc.channels,
    };
};

Lights.makeDefinition = function(definition, definitions, name) {
    var definitionName = definition || name.split('_')[0],
        definitionJson = definitions[definitionName];
    return Lights.Definition(definitionName, definitionJson);
};
