#pragma once

#include "swirly/util/Dict.js"
#include "swirly/util/ForEach.js"

var Inputs = {}

Inputs.make = function(show) {
    var inputHandlers = show.inputHandlers;

    return applyEachArray(show.json.inputs, function(desc) {
        var name = desc.name,
            help = name + ': ' + desc.help,
            ratio = Range.MIDI.fromJson(desc.range).ratio;

        function callback(value) {
            var cb = inputHandlers[name];
            cb && cb(ratio(value));
        };

        return {name: name, help: help, callback: callback, desc: desc};
    });
};

Inputs.print = function(inputs) {
    print('Inputs');
    inputs.forEach(function(input) {
        print('  ', input.help);
        print('    ', printable(input.desc));
    });
    print();
};
