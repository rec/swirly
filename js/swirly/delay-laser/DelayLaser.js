#pragma once

#include "swirly/delay-laser/Caller.js"
#include "swirly/delay-laser/Constants.js"
#include "swirly/delay-laser/ControlHandler.js"
#include "swirly/delay-laser/State.js"
#include "swirly/max/findObjects.js"
#include "swirly/util/logging.js"

Logging.setLogging(!false);

Laser.DelayLaser = function() {
    var max = Max.findNames(Laser.MAX_NAMES),
        state = new Laser.State(max),
        controlHandler = new Laser.ControlHandler(max, state),
        caller = new Laser.Caller(controlHandler);

    max.dmxusbpro.message(Laser.DMX);
    max.midiin_menu.message('symbol', Laser.MIDIIN);
    max.ctlout_menu.message('symbol', Laser.MIDIOUT);
    max.notein_menu.message('symbol', Laser.NOTEIN);

    state.reset();

    function notes(key, velocity) {
        velocity && state.presets.action(key);
    }

    return {
        cc: caller,
        allOff: caller.allOff,
        notes: notes,
    };
};
