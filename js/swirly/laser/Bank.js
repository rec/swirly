#pragma once

#include "swirly/laser/Instrument.js"

Laser.Bank = function(multisliders, dmx, baseChannel, bankSize) {
    baseChannel = baseChannel || 0;
    bankSize = bankSize || 16;
    var instruments = [];
    for (var i in multisliders) {
        var offset = baseChannel + i * bankSize;
        instruments.push(new Laser.Instrument(multisliders[i], dmx, offset));
    }

    this.setEnabled = function(index, enabled) {
        instruments[index].enabled = enabled;
    };

    this.setBlackout = function(index, blackout) {
        instruments[index].setFader('mode', blackout ? 0 : 0xFF);
    };

    this.setFader = function(fader, value) {
        instruments.forEach(function(instrument) {
            if (instrument.enabled)
                instrument.setFader(fader, value):
        });
    };
};
