#pragma once

#include "swirly/laser/Laser.js"

Laser.Swap = function(max) {
    var leftRight = false,
        upDown = false;

    function setChannels() {
        for (var i = 0; i < Laser.LASER_COUNT; ++i) {
            var j = i;
            if (leftRight)
                j = Laser.LASER_COUNT - 1 - j;
            if (upDown)
                j = j + (j % 2) ? -1 : 1;
            max.displays.message(i, 'channel', 1 + j * 16);
        }
    }

    this.setLeftRight = function(value) {
        leftRight = value;
        setChannels();
    }

    this.setUpDown = function(value) {
        upDown = value;
        setChannels();
    }

    this.getState = function() {
        return {leftRight: leftRight,
                upDown: upDown};
    }

    this.setState = function(state) {
        leftRight = state.leftRight;
        upDown = state.upDown;
        setChannels();
    }

    this.reset = function() {
        leftRight = upDown = false;
        setChannels()
    };
};
