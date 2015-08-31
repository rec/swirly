#pragma once

#include "swirly/instrument/DMXOutput.js"
#include "swirly/util/Dict.js"

Instrument.Instance = function(name, description, offset) {
    this.name = name;
    this.description = description;
    this.offset = offset;
};

/** A Bank is a named collection of instrument instances. */
Instrument.Bank = function(args, dmx, maxObjects) {
    var results = {};
    Dict.forEach(args.instruments, function(name, instrument) {
        var definitionName = instrument.definition || name.split('_')[0],
            definition = args.definitions[definitionName];
            multislider = maxObjects[instrument.multislider || name],
            output = Instrument.DMXOutput(instrument.offset, dmx, multislider),
        results[name] = {definition: definition, output: output};
    });
    return result;
};
