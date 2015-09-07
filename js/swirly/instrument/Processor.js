#pragma once

#include "swirly/instrument/Instrument.js"
#include "swirly/util/Color.js"
#include "swirly/util/ForEach.js"
#include "swirly/util/Functional.js"
#include "swirly/util/Range.js"

Instrument.makeListener = function(desc, lights) {
    var address = desc.address.split('.', 2),
        channel = address.pop(),
        name = address.pop(),
        instrument = show.lights[name];

    function output(value, offset) {
        return instrument.output(channel + (offset || 0), value);
    };

    var maker = Instrument.listenerMakers[desc.listener] ||
        (desc.seq && Instrument.listenerMakers.seq);

    return maker ? maker(output, desc, lights) : output;
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

    seq: function(output, desc, lights) {
        return Util.sequence(
            applyEach(desc.seq, function(subdesc) {
                return Instrument.makeListener(subdesc, lights);
            })
        );
    },
};

Instrument.makeProcessors = function(lights, json) {
    var result = {};

    return applyEach(json, function(processor) {
        return applyEach(processor, function(desc) {
            return Instrument.makeListener(desc, lights);
        });
    });
};
