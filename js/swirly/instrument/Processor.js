#pragma once

#include "swirly/instrument/Instrument.js"
#include "swirly/show/Address.js"
#include "swirly/util/Color.js"
#include "swirly/util/ForEach.js"
#include "swirly/util/Functional.js"
#include "swirly/util/Range.js"

Instrument.makeListener = function(desc, show) {
    var address = Show.splitAddress(desc.address),
        channel = address.pop(),
        instrument = Show.getFromAddress(show.instruments, address);
//        select = Range.DMX.fromJson((desc.range || {}).output).select;

    function output(value, offset) {
        return instrument.output(channel + (offset || 0), value);
    };

    var maker = Instrument.listenerMakers[desc.listener] ||
        (desc.seq && Instrument.listenerMakers.seq);

    return maker ? maker(output, desc, show) : output;
};

Instrument.listenerMakers = {
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
                return Instrument.makeListener(subdesc, show);
            })
        );
    },
};

Instrument.makeProcessors = function(show, json) {
    var result = {};

    return applyEach(json, function(processor) {
        return applyEach(processor, function(desc) {
            var inputRatio = Range.MIDI.fromJson(desc.input).ratio,
                listener = Instrument.makeListener(output, desc, show);

            return function(value, offset) {
                return listener(inputRatio(value), offset);
            };
        });
    });
};
