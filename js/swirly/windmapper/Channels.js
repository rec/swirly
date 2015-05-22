#pragma once

#include "swirly/laser/Laser.js"
#include "swirly/util/Range.js"

var MovingHeadBase = 64,
    MovingHead = {
        channels: {
            x: 1 + MovingHeadBase,
            y: 2 + MovingHeadBase,
            rotation: 3 + MovingHeadBase,
            red: 4 + MovingHeadBase,
            green: 5 + MovingHeadBase,
            blue: 6 + MovingHeadBase,
            white: 7 + MovingHeadBase,
            partition: 8 + MovingHeadBase,
            inside: 9 + MovingHeadBase,
            dimmer: 10 + MovingHeadBase,
            strobe: 11 + MovingHeadBase,
            effect: 12 + MovingHeadBase,
            blank: 13 + MovingHeadBase,
            auto: 14 + MovingHeadBase,
        },
    },
    Ranges = {
        note: new Util.Range(33, 103),
        dmx: new Util.Range(0, 255),
        midi: new Util.Range(0, 127),

    };
