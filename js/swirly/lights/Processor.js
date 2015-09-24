#pragma once

#include "swirly/lights/Lights.js"
#include "swirly/util/Color.js"
#include "swirly/util/ForEach.js"
#include "swirly/util/Range.js"

/** A processor is made of multiple listeners, each of which gets a stream of
    floating point numbers between 0 and 1. */
Lights.outputMakers = {
    rgb: function(output) {
        return function(value, offset) {
            var rgb = Util.hsvToRgbRaw(value, 1.0, 1.0);
            output(rgb[0], offset);
            output(rgb[1], offset + 1);
            output(rgb[2], offset + 2);
        };
    },
};

Lights.makeOutput = function(desc, lights) {
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

Lights.makeListeners = function(desc, lights) {
    if (!(desc instanceof Array))
        desc = [desc];

    var makers = applyEachArray(desc, function(listener) {
        if (isString(listener))
            listener = {light: listener};

        var output = Lights.makeOutput(listener, lights);
        if (!desc.output)
            return output;

        var maker = Lights.outputMakers[desc.output];
        return maker(output, desc, lights);
    });

    return sequenceEach(makers);
};

Lights.makeProcessors = function(show) {
    if (!show.json.processors)
        throw 'No processors found!';

    return applyEachObj(show.json.processors, function(processor) {
        return applyEachObj(processor, function(desc) {
            return Lights.makeListeners(desc, show.lights);
        });
    });
};

Lights.printProcessors = function(processors) {
    print('Processors');
    forEachSorted(processors, function(processor, name) {
        print('  ' + name + ':');
        forEachSorted(processor, function(subprocessor, subname) {
            print('    ' + subname + ':');
        });
    });
    print();
};
