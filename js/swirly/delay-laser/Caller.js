#pragma once

#include "swirly/delay-laser/Constants.js"


Laser.Caller = function(controlHandler) {
    /**
       The controls are arranged in banks of 8 MIDI controller
       numbers (BCF2000_BANK_SIZE = 8)
    */
    var callers = {};

    function makeCaller(name, offset) {
        var method = controlHandler[name];

        return function(value) {
            return method(offset, value);
        };
    }

    for (var name in Laser.BCF2000) {
        var offset = Laser.BCF2000[name];
        for (var i = 0; i < Laser.BCF2000_BANK_SIZE; ++i)
            callers[offset + i] = makeCaller(name, i);
    }

    return function(control, value) {
        return callers[control](value)
    };
};
