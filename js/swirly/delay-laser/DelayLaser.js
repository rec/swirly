#pragma once

#include "swirly/laser/Laser.js"
#include "swirly/delay-laser/BCF.js"
#include "swirly/delay-laser/Constants.js"
#include "swirly/delay-laser/LaserClass.js"
#include "swirly/delay-laser/LaserState.js"
#include "swirly/delay-laser/Swap.js"
#include "swirly/max/findObjects.js"
#include "swirly/util/logging.js"

Logging.setLogging(!false);

Laser.DelayLaser = function() {
    var lasers = [],
        recordEnabled = false,
        presets = {},
        active = {},
        max = Max.findNames(Laser.max_names),
        swap = new Laser.Swap(max),
        state = Laser.LaserState(lasers);

    function allOff() {
        for (var i = 0; i < Laser.LASER_COUNT; ++i) {
            lasers[i].setBlackout(0, true);
            max.ctlout.message(Laser.BCF2000.button1 + i, 0);
        }
    }

    var bcf = Laser.BCF(
        max, lasers, minTime, maxTime, active, state, swap, allOff);

    function notes(key, velocity) {
        if (velocity)
            state.retrieve(key);
    }

    function reset() {
        swap.setChannels();
        for (var i = 0; i < Laser.FADERS.length; ++i) {
            var name = Laser.FADERS[i];
            max.faders.message(name, 0);
            if (i < Laser.LFO_COUNT)
                max.faders.message(name, 'lfo', 0);
            else
                max.faders.message(name, 'name', Laser.names[name].invert[0]);

            for (var c in Laser.BCF2000)
                max.ctlout.message(Laser.BCF2000[c] + i, 0);
        };
        for (var i = 0; i < Laser.LASER_COUNT; ++i)
            lasers[i].reset();
    }

    try {
        presets = FileReader.readJson(Laser.PRESET_FILE);
    } catch(_) {
    }

    for (var i = 0; i < Laser.LASER_COUNT; ++i)
        lasers.push(new Laser.Class(max.displays, i));

    max.dmxusbpro.message(Laser.DMX);
    max.midiin_menu.message('symbol', Laser.MIDIIN);
    max.ctlout_menu.message('symbol', Laser.MIDIOUT);
    max.notein_menu.message('symbol', Laser.NOTEIN);

    reset();

    return {
        cc: bcf.cc,
        allOff: allOff,
        notes: notes,
    };
};
