#pragma once

#include "swirly/lights/Definition.js"
#include "swirly/util/ForEach.js"

/** A Bank is a named collection of instrument instances. */
Lights.make = function(show) {
    var maxObjects = show.objects.maxclass,
        dmx = maxObjects.dmxusbpro,
        json = show.json.lights;

    if (! (json && json.definitions && json.instruments))
        throw 'No lighting instruments specified for show!';

    return applyEachObj(json.instruments, function(instrument, name) {
        var multiName = instrument.multislider || name,
            multislider = maxObjects[multiName],

            definitionName = instrument.definition || name.split('_')[0],
            definitionJson = json.definitions[definitionName],
            definition = Lights.Definition(definitionName, definitionJson),
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
