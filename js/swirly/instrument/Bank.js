#pragma once

#include "swirly/instrument/Definition.js"
#include "swirly/util/ForEach.js"

Instrument.Output = function(offset, dmx, multislider) {
    return function(ivalue, channel) {
        dmx(channel + offset, ivalue);
        multislider.message('set', [channel, ivalue]);
    };
};

/** A Bank is a named collection of instrument instances. */
Instrument.makeBank = function(show) {
    var maxObjects = show.objects.maxclass,
        dmx = maxObjects.dmxusbpro,
        json = show.json.lights;

    if (! (json && json.definitions && json.instruments))
        throw 'No lighting instruments specified for show!';

    return applyEachObj(json.instruments, function(instrument, name) {
        var multiName = instrument.multislider || name,
            defName = instrument.definition || name.split('_')[0],
            multislider = maxObjects[multiName],
            definition = Instrument.Definition(json.definitions[defName]),
            output = Instrument.Output(instrument.offset, dmx, multislider);

        return {definition: definition, output: output};
    });
};
