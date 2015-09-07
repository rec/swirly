#pragma once

#include "swirly/instrument/Instrument.js"
#include "swirly/util/ForEach.js"

Instrument.makeInputs = function(json) {
    var inputs = {
        descriptions: [],
        methods: {},
        callbacks: {},
    };

    json.forEach(function(desc) {
        inputs.descriptions.append([desc.name, desc.help]);
        var scale = desc.range ?
            Range.MIDI.fromJson(desc.range).ratio :
            function(x) { return x; };
        methods[name] = function(value) {
            var callback = inputs.callbacks[desc.name];
            callback && callback(scale(value));
        };
    });

    return inputs;
};
