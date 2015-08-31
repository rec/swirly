#pragma once

#include "swirly/instrument/Instrument.js"

Instrument.DMXOutput = function(offset, dmx, multislider) {
    return function(channel, value) {
        dmx(channel + offset, value);
        multislider.message('set', [channel, value]);
    };
};
