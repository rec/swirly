#pragma once

#include "swirly/delay-laser/Caller.js"
#include "swirly/delay-laser/Constants.js"
#include "swirly/delay-laser/ControlHandler.js"
#include "swirly/delay-laser/NotesHeld.js"
#include "swirly/delay-laser/Presets.js"
#include "swirly/delay-laser/State.js"
#include "swirly/max/findObjects.js"
#include "swirly/util/logging.js"

Logging.setLogging(!false);

Laser.DelayLaser = function() {
    var max = Max.findNames(Laser.MAX_NAMES),
        state = new Laser.State(max),
        presets = new Laser.Presets(state.lasers),
        notesHeld = new Laser.NotesHeld(presets.onNotes),
        controlHandler = new Laser.ControlHandler(max, state),
        caller = new Laser.Caller(controlHandler);

    this.cc = caller.cc;
    this.allOff = state.allOff;
    this.noteOff = notesHeld.noteOff;
    this.noteOn = notesHeld.noteOn;

    max.dmxusbpro.message(Laser.DMX);
    max.midiin_menu.message('symbol', Laser.MIDIIN);
    max.ctlout_menu.message('symbol', Laser.MIDIOUT);
    max.notein_menu.message('symbol', Laser.NOTEIN);

    state.reset();
};
