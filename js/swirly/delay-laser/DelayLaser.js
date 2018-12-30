#pragma once
#include "swirly/delay-laser/ControlHandler.js"
#include "swirly/delay-laser/NoteHandler.js"
#include "swirly/delay-laser/State.js"
#include "swirly/util/logging.js"

Logging.setLogging(!false);

Laser.DelayLaser = function() {
    var state = new Laser.State(max),
        noteHandler = new Laser.NoteHandler(state),
        controlHandler = new Laser.ControlHandler(state);

    this.allOff = state.allOff;
    this.noteOff = noteHandler.noteOff;
    this.noteOn = noteHandler.noteOn;
    this.cc = controlHandler.cc;
    this.reset = function() {
        state.reset();
        controlHandler.reset();
        noteHandler.reset();
    };

    max.dmxusbpro.message(Laser.DMX);
    max.midiin_menu.message('symbol', Laser.MIDIIN);
    max.ctlout_menu.message('symbol', Laser.MIDIOUT);
    max.notein_menu.message('symbol', Laser.NOTEIN);

    this.reset()
};
