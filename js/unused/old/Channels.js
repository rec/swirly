#pragma once

#include "swirly/laser/Laser.js"
#include "swirly/util/Dicti.js"
#include "swirly/util/Range.js"
#include "swirly/show/Loop.js"
#include "swirly/show/NoteAndBreathMapper.js"
#include "swirly/show/Sequencer.js"

var Channel = {
    laser: [
        Dicti.offset(1, Laser.channels),
        Dicti.offset(17, Laser.channels),
        Dicti.offset(33, Laser.channels),
        Dicti.offset(49, Laser.channels)
    ],

    moving: Dicti.offset(64, {
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
        auto: 14
    });

var Ranges = {
    note: new Range(33, 103),
    dmx: new Range(0, 255),
    midi: new Range(0, 127),
};
