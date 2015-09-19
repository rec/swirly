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
            multislider = maxObjects[multiName],

            definitionName = instrument.definition || name.split('_')[0],
            definitionJson = json.definitions[definitionName],
            definition = Instrument.Definition(definitionName, definitionJson),

            offset = instrument.offset,
            output = Instrument.Output(offset, dmx, multislider);

        return {
            name: name,
            definition: definition,
            output: output,
            offset: offset,
        };
    });
};

Instrument.printBank = function(bank) {
    print('Instrument.Bank')
    forEachSorted(bank, function(instrument, name) {
        var defName = instrument.definition.name,
            offset = instrument.offset;
        print(' ', name + ':', defName, 'at', offset);
    });
    print();
};
