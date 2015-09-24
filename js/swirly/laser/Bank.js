#pragma once

#include "swirly/laser/Lights.js"

Laser.Bank = function(multisliders, dmx, baseChannel, bankSize) {
    baseChannel = baseChannel || 0;
    bankSize = bankSize || 16;
    var instruments = [],
        self = this;
    for (var i in multisliders) {
        var offset = baseChannel + i * bankSize;
        instruments.push(new Laser.Lights(multisliders[i], dmx, offset));
    }

    self.setEnabled = function(index, enabled) {
        Logging.Log('setEnabled', index, enabled);
        instruments[index].enabled = enabled;
    };

    self.setBlackout = function(index, blackout) {
        Logging.Log('setBlackout', index, blackout);
        instruments[index].setFader(Laser.channels.mode, blackout ? 0 : 0xFF);
    };

    self.setFader = function(fader, value) {
        instruments.forEach(function(instrument) {
            if (instrument.enabled)
                instrument.setFader(fader, value);
        });
    };
};
