#pragma once

#include "swirly/laser/Laser.js"
#include "swirly/util/Range.js"
#include "swirly/windmapper/Loop.js"
#include "swirly/windmapper/NoteAndBreathMapper.js"
#include "swirly/windmapper/Sequencer.js"

function _offset(off, dict) {
    var result = {};
    for (var i in dict)
        result[i] = dict[i] + off;
    return result;
};

var Channel =
    {
        laser: [
            _offset(1, Laser.channels),
            _offset(17, Laser.channels),
            _offset(33, Laser.channels),
            _offset(49, Laser.channels)
        ],

        moving: _offset(64, {
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
        }),
    },

    Ranges = {
        note: new Util.Range(33, 103),
        dmx: new Util.Range(0, 255),
        midi: new Util.Range(0, 127),
    };
