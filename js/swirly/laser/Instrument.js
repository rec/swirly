#pragma once

#include "swirly/laser/Laser.js"

Laser.Channels = {
    mode: 0,
    pattern: 1,
    zoom: 2,
    xrot: 3,
    yrot: 4,
    zrot: 5,
    horizontal: 6,
    vertical: 7,
    color: 8,
};

Laser.Instrument = function(multislider, dmx, channelOffset) {
    var faders = new Array(9);

    function sendMultislider() {
        multislider.message(faders);
    };

    function setFader(fader, value) {
        faders[fader] = value;
        dmx.message([channelOffset + fader, value]);
    };

    this.clear = function() {
        for (var i in that.faders)
            setFader(i, 0);
        sendMultislider();
    };


    this.setFader = function(fader, value) {
        setFader(fader, value);
        sendMultislider();
    };
};
