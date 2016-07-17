#pragma once

#include "swirly/lighter/Lighter.js"
#include "swirly/util/Dict.js"


Lighter.makeInstrument = function(desc, presetsDesc) {
    var mappers = Lighter.makeMappers(desc),
        zeroes = Dict.fillArray(desc.channels.length, 0),
        defaults = zeroes;

    if (desc.presets)
        presetsDesc = Dict.union(desc.presets, presetsDesc);

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
        desc: desc,
        mappers: mappers,
        presets: presets,
        sceneMaker: sceneMaker,
    };
};
