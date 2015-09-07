#pragma once

#include "swirly/instrument/Instrument.js"
#include "swirly/show/Address.js"
#include "swirly/util/Color.js"
#include "swirly/util/ForEach.js"
#include "swirly/util/Functional.js"
#include "swirly/util/Range.js"

Instrument.makeFilter = function(desc, show) {
    var address = Show.splitAddress(desc.address),
        channel = address.pop(),
        instrument = Show.getFromAddress(show.instruments, address),
        select = Range.DMX.fromJson((desc.range || {}).output).select;

    function output(value, offset) {
        return instrument.output(channel + (offset || 0), select(value));
    };

    var maker = Instrument.filterMakers[desc.filter] ||
        (desc.seq && Instrument.filterMakers.seq);

    return maker ? maker(output, desc, show) : output;
};

Instrument.filterMakers = {
    rgb: function(output) {
        return function(value, offset) {
            var rgb = Util.hsvToRgbRaw(value, 1.0, 1.0);
            output(rgb[0], offset);
            output(rgb[1], offset + 1);
            output(rgb[2], offset + 2);
        };
    },

    seq: function(output, desc, show) {
        return Util.sequence(
            applyEach(desc.seq, function(subdesc) {
                return Instrument.makeFilter(subdesc, show);
            })
        );
    },
};

Instrument.makeProcessors = function(show, json) {
    var result = {};
    return applyEach(json, function(processor) {
        return applyEach(processor, function(desc) {
            var inputRatio = Range.MIDI.fromJson(desc.input).ratio,
                filter = Instrument.makeFilter(output, desc, show);

            return function(value, offset) {
                return filter(inputRatio(value), offset);
            };
        });
    });
};
