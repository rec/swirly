#pragma once

#include "swirly/instrument/Instrument.js"
#include "swirly/util/Dict.js"
#include "swirly/util/ForEach.js"

Instrument.makeInputs = function(show) {
    var callbackTable = show.callbackTable;
    return applyEach(show.json.inputs, function(desc) {
        var name = desc.name,
            help = name + (desc.help ? ': ' + desc.help : ''),
            callback;

        if (desc.range) {
            var scale = Range.MIDI.fromJson(desc.range).ratio;
            callback = function (value) {
                var cb = callbackTable[name];
                cb && cb(scale(value));
            };
        } else {
            callback = function (value) {
                var cb = callbackTable[name];
                cb && cb(value);
            };
        }
        return {name: name, help: help, callback: callback};
    });
};
