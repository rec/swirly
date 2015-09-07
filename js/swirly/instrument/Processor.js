#pragma once

#include "swirly/instrument/Instrument.js"
#include "swirly/util/Color.js"
#include "swirly/util/ForEach.js"
#include "swirly/util/Functional.js"
#include "swirly/util/Range.js"

Instrument.listenerMakers = {
    rgb: function(output) {
        return function(value, offset) {
            var rgb = Util.hsvToRgbRaw(value, 1.0, 1.0);
            output(rgb[0], offset);
            output(rgb[1], offset + 1);
            output(rgb[2], offset + 2);
        };
    },

    seq: function(_, desc, lights) {
        return Util.sequence(
            applyEach(desc.seq, function(subdesc) {
                return Instrument.makeListener(subdesc, lights);
            })
        );
    },
};

Instrument.makeOutput = function(desc, lights) {
    var address = desc.address.split('.', 2),
        name = address[0],
        channel = address[1],
        instrument = lights[name],
        output = instrument.output,
        unscale = Range.DMX.fromJson(desc.range).select;

    return function(value, offset) {
        return output(channel + (offset || 0), unscale(value));
    };
};

Instrument.makeListener = function(desc, lights) {
    var output = Instrument.makeOutput(desc, lights);
    var maker = Instrument.listenerMakers[desc.listener] ||
        (desc.seq && Instrument.listenerMakers.seq);

    return maker ? maker(output, desc, lights) : output;
};

Instrument.makeProcessors = function(lights, json) {
    return applyEach(json, function(processor) {
        return applyEach(processor, function(desc) {
            return Instrument.makeListener(desc, lights);
        });
    });
};
