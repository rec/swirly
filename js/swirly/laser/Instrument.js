#pragma once

#include "swirly/laser/Laser.js"

Laser.Instrument = function(multislider, dmx, channelOffset) {
    var faders = new Array(9);

    function sendMultislider() {
        Logging.Log('multislider', faders);
        multislider.message(faders);
    };

    function setFader(fader, value) {
        faders[fader] = value;
        dmx.message(channelOffset + fader, value);
        Logging.Log('dmx', channelOffset + fader, value, '\n');
    };

    function clear() {
        for (var i = 0; i < faders.length; ++i)
            setFader(i, 0);

        sendMultislider();
    };


    this.setFader = function(fader, value) {
        setFader(fader, value);
        sendMultislider();
    };

    clear();
    this.clear = clear;
    Logging.Log('multislider', channelOffset, faders, faders.length);
};
