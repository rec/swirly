#pragma once

#include "swirly/instrument/Definition.js"
#include "swirly/instrument/DMXOutput.js"
#include "swirly/util/ForEach.js"

/** A Bank is a named collection of instrument instances. */
Instrument.makeBank = function(show) {
    var maxObjects = show.objects.maxclass,
        dmx = maxObjects.dmxusbpro,
        json = show.json.lights;

    if (! (json && json.definitions && json.instruments))
        throw 'No lighting instruments specified for show!';

    return applyEach(json.instruments, function(instrument, name) {
        var multiName = instrument.multislider || name,
            defName = instrument.definition || name.split('_')[0],
            multislider = maxObjects[multiName],
            definition = Instrument.Definition(json.definitions[defName]),
            output = Instrument.DMXOutput(instrument.offset, dmx, multislider);

        return {definition: definition, output: output};
    });
};
