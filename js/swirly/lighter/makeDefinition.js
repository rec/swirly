#pragma once

#include "swirly/lighter/Lighter.js"
#include "swirly/util/Dicti.js"


Lighter.makeDefinition = function(desc, presetsDesc) {
    var mappers = Lighter.makeMappers(desc),
        zeroes = Dicti.fillArray(desc.channels.length, 0),
        defaults = zeroes;

    if (desc.presets)
        presetsDesc = Dicti.union(desc.presets, presetsDesc);

    function sceneMaker(sceneDesc) {
        var scene = defaults.slice();
        forEach(sceneDesc, function(value, name) {
            var mapper = mappers[name];
            scene[mapper.channel] = mapper.mapper(value);
        });
        return scene;
    };

    if (presetsDesc.defaults)
        defaults = sceneMaker(presetsDesc.defaults);

    var presets = applyEachObj(presetsDesc, sceneMaker);
    presets.defaults = defaults;
    presets.blackout = presets.blackout || zeroes;

    return {
        display: desc.display || [],
        mappers: mappers,
        presets: presets,
        sceneMaker: sceneMaker,
    };
};

Lighter.makeInstrument = function(definition, offset, dmx) {
    function outMaker(channelName) {
        var mapper = definition.mappers[channelName],
            channel = mapper.channel + offset,
            func = mapper.mapper;
        return function(value) {
            dmx(channel, func(mapper));
        };
    };

    return {
        offset: offset,
        definition: definition,
    };
};
