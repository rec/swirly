#pragma once

#include "swirly/instrument/Instrument.js"
#include "swirly/show/Address.js"
#include "swirly/util/ForEach.js"
#include "swirly/util/Range.js"

Instrument.defaultFilter = 'linear';

Instrument.filterTable = {
    linear: function(desc) {
        return Range.converter(desc.range, Range.MIDI, Range.DMX);
    },
};

Instrument.makeProcessors = function(show, json) {
    function makeFilter(filter) {
        var fname = filter.filter || Instrument.defaultFilter,
            filterFunc = Instrument.filterTable[fname](filter),
            address = Show.splitAddress(filter.address),
            channel = address.pop(),
            instrument = Show.getFromAddress(show.instruments, address);
        return function(value) {
            instrument.output(channel, filterFunc(value));
        };
    };

    return applyEach(json, function(processor) {
        var subs = applyEach(processor, makeFiler);
        return function() {
            // This is the function called to install the processor into the
            // show.
            forEach(processor, function(filter, name) {
                // TODO: extract the methods from inside the show.
                show[name] = filter;
            });
        });
    });
};
