#pragma once

#include "swirly/laser/Laser.js"

Laser.NotesHeld = function(onNotes) {
    var notes = {},
        self = this;

    this.onNotes = onNotes;

    this.noteOn = function(note, value) {
        if (value)
            notes[note] = true;
        else
            delete notes[note];

        self.onNotes(note, value, notes);
    }

    this.noteOff = function(note, value) {
        self.noteOn(note, 0);
    }
};
