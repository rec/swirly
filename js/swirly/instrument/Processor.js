#pragma once

#include "swirly/instrument/Instrument.js"
#include "swirly/util/Color.js"
#include "swirly/util/ForEach.js"
#include "swirly/util/Range.js"

/** A processor is made of multiple listeners, each of which gets a stream of
    floating point numbers between 0 and 1. */
Instrument.outputMakers = {
    rgb: function(output) {
        return function(value, offset) {
            var rgb = Util.hsvToRgbRaw(value, 1.0, 1.0);
            output(rgb[0], offset);
            output(rgb[1], offset + 1);
            output(rgb[2], offset + 2);
        };
    },
};

Instrument.makeOutput = function(desc, lights) {
    if (!desc.light)
        throw 'No light in description ' + toLoggable(desc);

    var address = desc.light.split('.', 2),
        name = address[0],
        channel = address[1],
        instrument = lights[name],
        output = instrument.output,
        range = Range.DMX.fromJson(desc.range),
        unscale = range.select;

    function outfunc(fvalue, offset) {
        return output(unscale(fvalue), channel + (offset || 0));
    };

    return {output: outfunc, name: name, channel: channel, range: range};
};

Instrument.makeListeners = function(desc, lights) {
    if (!(desc instanceof Array))
        desc = [desc];

    var makers = applyEachArray(desc, function(listener) {
        if (isString(listener))
            listener = {light: listener};

        var output = Instrument.makeOutput(listener, lights);
        if (!desc.output)
            return output;

        var maker = Instrument.outputMakers[desc.output];
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
