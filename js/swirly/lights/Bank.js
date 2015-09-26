#pragma once

#include "swirly/lights/Definition.js"
#include "swirly/util/ForEach.js"

Lights.make = function(show) {
    var maxObjects = show.objects.maxclass,
        dmx = maxObjects.dmxusbpro,
        json = show.json.lights;

    if (! (json && json.definitions && json.instruments))
        throw 'No lighting instruments specified for show!';

    return applyEachObj(json.instruments, function(instrument, name) {
        var multiName = instrument.multislider || name,
            multislider = maxObjects[multiName],
            definition = Lights.makeDefinition(
                instrument.definition, json.definitions, name),
            offset = instrument.offset;

        function output(ivalue, channel) {
            dmx(channel + offset, ivalue);
            multislider.message('set', [channel, ivalue]);
        };

        return {
            name: name,
            definition: definition,
            output: output,
            offset: offset,
        };
    });
};

Lights.make = function(show, desc) {
    var definitions = applyEachObj(desc.definitions, Light.makeDefinition);
    forEachObj(desc.presets, function(desc, name) {
        var def = definitions[name];
        if (!def)
            throw 'Didn\'t understand definition of preset ' + name;

        return def.presets[def.makeScene(desc)];
    }),

    return {definitions: definitions,
            presets: presets,
            instruments: instruments};
};

Lights.makeInstrument = function(show, desc, name) {
    var json = show.json.lights,
        multiName = desc.multislider || name,
        multislider = show.objects.byClass[multiName],
        definition = Lights.makeDefinition(
            desc.definition, json.definitions, name),
        dmx = show.objects.byClass.dmxusbpro,
        offset = desc.offset,
        cache = new Array(definition.channels.length);

    function clearCache() {
        for (var i = 0; i < cache.length; ++i)
            cache[i] = undefined;
    };

    function output(ivalue, channel) {
        if (ivalue === cache[channel])
            return;
        cache[channel] = ivalue;
        dmx(channel + offset, ivalue);
        multislider.message('set', [channel, ivalue]);
    };

    return {
        name: name,
        definition: definition,
        output: output,
        offset: offset,
        clearCache: clearCache,
    };
};


Lights.print = function(bank) {
    print('Lights')
    forEachSorted(bank, function(instrument, name) {
        var defName = instrument.definition.name,
            offset = instrument.offset;
        print(' ', name + ':', defName, 'at', offset);
    });
    print();
};

Lights.makeScene = function(show, desc) {
    // This is a table of light name -> state.
    return applyEachObj(desc, function(light, name) {
        var instrument = show.lights[name],
            output = instrument.output,
            scene = instrument.definition.makeScene(light);

        return function() {
            scene.forEach(output);
        };
    });
};
