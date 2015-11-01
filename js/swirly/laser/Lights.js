#pragma once

#include "swirly/laser/Laser.js"

Laser.Lights = function(multislider, dmx, channelOffset) {
    function splitInverter(value) {
        var pivot = (value < 128) ? 127 : 383;
        return pivot - value;
    }

    function singleInverter(max) {
        return function(value) {
            return max - value;
        };
    }

    var self = this,
        faders = new Array(9),
        inverters = [
            singleInverter(192), // mode
            singleInverter(224), // pattern
            splitInverter,       // zoom
            splitInverter,       // xrot
            splitInverter,       // yrot
            splitInverter,       // zrot
            splitInverter,       // xpos
            splitInverter,       // ypos
            singleInverter(224), // color
        ],
        globalInverted = false,
        localInverted = false,
        isInverted = false,
        invertEnabled = new Array(9);

    function sendDMX(fader, value) {
        if (isInverted && invertEnabled[fader])
            value = inverters[fader](value);

        dmx.message(1 + channelOffset + fader, value);
    }

    function redisplay() {
        isInverted = (globalInverted != localInverted);
    }

    self.enableInvert = function(fader, isEnabled) {
        invertEnabled[fader] = isEnabled;
    };

    self.globalInvert = function(inverted) {
        globalInverted = inverted;
        redisplay();
    }

    self.localInvert = function(inverted) {
        localInverted = inverted;
        redisplay();
    }

    function sendMultislider() {
        Logging.Log('multislider', faders);
        multislider.message(faders);
    };

    function setFader(fader, value) {
        faders[fader] = value;
        sendDMX(fader);
        Logging.Log('dmx', channelOffset + fader, value, '\n');
    };

    function clear() {
        for (var i = 1; i < faders.length; ++i)
            setFader(i, 0);
        setFader(0, 0xFF);

        sendMultislider();
    };


    self.setFader = function(fader, value) {
        setFader(fader, value);
        sendMultislider();
    };

    clear();
    self.clear = clear;
    Logging.Log('multislider', channelOffset, faders, faders.length);
};
