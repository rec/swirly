#pragma once

#include "swirly/instrument/Instrument.js"
#include "swirly/util/Dict.js"
#include "swirly/util/ForEach.js"

Instrument.makeInputs = function(json, callbackTable) {
    return applyEach(json, function(desc) {
        var name = desc.name,
            help = name + (desc.help ? ': ' + desc.help : ''),
            scale = desc.range
                ? Range.MIDI.fromJson(desc.range).ratio
                : function(x) { return x; };

        function callback(value) {
            var cb = callbackTable[name];
            cb && cb(scale(value));
        }
        return {name: name, help: help, callback: callback};
    });
};
