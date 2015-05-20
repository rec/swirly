#pragma once

#include "swirly/laser/Laser.js"
#include "swirly/util/Range.js"

var MovingHead {
    channels: {
        x: 1,
        y: 2,
        rotation: 3,
        red: 4,
        green: 5,
        blue: 6,
        white: 7,
        partition: 8,
        inside: 9,
        dimmer: 10,
        strobe: 11,
        effect: 12,
        blank: 13,
        auto: 14,
    },
};

var Ranges = {
    note: new Util.Range(33, 103),
    dmx: new Util.Range(0, 255)
};
