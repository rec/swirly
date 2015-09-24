#pragma once

#include "swirly/util/Color.js"
#include "swirly/util/ForEach.js"
#include "swirly/util/Range.js"

var Processor = {};

/** Make an output processor line. */
Processor.makeOutput = function(show, desc) {
    if (!desc.light)
        throw 'No light in description ' + toLoggable(desc);

    var address = desc.light.split('.', 2),
        name = address[0],
        channel = address[1],
        instrument = show.lights[name],
        output = instrument.output,
        range = Range.DMX.fromJson(desc.range),
        unscale = range.select;

    function outfunc(fvalue, offset) {
        return output(unscale(fvalue), channel + (offset || 0));
    };

    return {output: outfunc, name: name, channel: channel, range: range};
};

/** A processor line is made of one or more listeners, each of which gets a
    stream of floating point numbers between 0 and 1. */
Processor.makeLines = function(show, desc) {
    if (!(desc instanceof Array))
        desc = [desc];

    var lineMakers = {
        rgb: function(output) {
            return function(value, offset) {
                var rgb = Util.hsvToRgbRaw(value, 1.0, 1.0);
                output(rgb[0], offset);
                output(rgb[1], offset + 1);
                output(rgb[2], offset + 2);
            };
        },

        none: function(output) {
            return output;
        },
    };

    return applyEachArray(desc, function(line) {
        if (isString(line))
            line = {light: line};

        var output = Processor.makeOutput(show, line),
            maker = lineMakers[desc.output || 'none'];

        var result = maker(output, desc, line);
        result.desc = desc;
        return result;
    });
};

Processor.make = function(show) {
    if (!show.json.processors)
        throw 'No processors found!';

    return applyEachObj(show.json.processors, function(processor) {
        return applyEachObj(processor, function(desc) {
            return sequenceEach(Processor.makeLines(show, desc));
        });
    });
};

Processor.print = function(processors) {
    print('Processors');
    forEachSorted(processors, function(processor, name) {
        print('  ' + name + ':');
        forEachSorted(processor, function(subprocessor, subname) {
            print('    ' + subname + ':');
        });
    });
    print();
};
