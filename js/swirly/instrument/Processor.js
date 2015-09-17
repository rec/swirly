#pragma once

#include "swirly/instrument/Instrument.js"
#include "swirly/util/Color.js"
#include "swirly/util/ForEach.js"
#include "swirly/util/Range.js"

Instrument.listenerMakers = {
    rgb: function(output) {
        return function(value, offset) {
            var rgb = Util.hsvToRgbRaw(value, 1.0, 1.0);
            output(offset, rgb[0]);
            output(offset + 1, rgb[1]);
            output(offset + 2, rgb[2]);
        };
    },
};

Instrument.makeOutput = function(desc, lights) {
    var address = desc.light.split('.', 2),
        name = address[0],
        channel = address[1],
        instrument = lights[name],
        output = instrument.output,
        unscale = Range.DMX.fromJson(desc.range).select;

    return function(value, offset) {
        return output(unscale(value), channel + (offset || 0));
    };
};

Instrument.makeListeners = function(desc, lights) {
    if (!(desc instanceof Array))
        desc = [desc];

    var makers = applyEachArray(desc, function(listener) {
        if (listener.constructor === String)
            listener = {light: listener};
        var output = Instrument.makeOutput(listener, lights);
        if (!desc.listener)
            return output;

        var maker = Instrument.listenerMakers[desc.listener];
        return maker(output, desc, lights);
    });
    return sequenceEach(makers);
};

Instrument.makeProcessors = function(show) {
    if (!show.json.processors)
        throw 'No processors found!';

    return applyEachObj(show.json.processors, function(processor) {
        return applyEachObj(processor, function(desc) {
            return Instrument.makeListeners(desc, show.lights);
        });
    });
};
