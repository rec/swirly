#pragma once

#include "swirly/instrument/Instrument.js"
#include "swirly/show/Address.js"
#include "swirly/util/Color.js"
#include "swirly/util/ForEach.js"
#include "swirly/util/Functional.js"
#include "swirly/util/Range.js"

Instrument.getOutput = function(desc, show) {
    var address = Show.splitAddress(desc.address),
        channel = address.pop(),
        instrument = Show.getFromAddress(show.instruments, address),
        select = Range.DMX.fromJson((desc.range || {}).output).select;

    return function(value, offset) {
        return instrument.output(channel + (offset || 0), select(value));
    };
};

Instrument.makeMaker = function(desc) {
    return Instrument.filterMakers[desc.filter] ||
        (desc.seq && Instrument.filterMakers.seq) ||
        Instrument.dflt;
};

Instrument.runMaker = function(output, desc, show) {
    var maker = Instrument.makeMaker(desc);
    return maker(output, desc, show);
};

Instrument.filterMakers = {
    dflt: function(output) {
        return output;
    },

    rgb: function(output) {
        return function(value, offset) {
            var rgb = Util.hsvToRgbRaw(value, 1.0, 1.0);
            output(rgb[0], offset);
            output(rgb[1], offset + 1);
            output(rgb[2], offset + 2);
        };
    },

    seq: function(output, desc, show) {
        return compose(
            applyEach(desc.seq, function(subdesc) {
                var suboutput = Instrument.getOutput(subdesc, show);
                return Instrument.runMaker(suboutput, subdesc, show);
            })
        );
    },
};

Instrument.makeProcessors = function(show, json) {
    var result = {};
    return applyEach(json, function(processor) {
        return applyEach(processor, function(desc) {
            var inputRatio = Range.MIDI.fromJson(desc.input).ratio,
                output = Instrument.getOutput(desc, show),
                filter = Instrument.runMaker(output, desc, show);

            return function(value, offset) {
                return filter(inputRatio(value), offset);
            };
        });
    });
};
