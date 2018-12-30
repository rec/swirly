#pragma once

#include "swirly/laser/Laser.js"

Laser.NoteHandler = function(state) {
    var self = this,
        notes;

    this.noteOn = function(note, velocity) {
        var index = notes.indexOf(note);
        if (velocity) {
            if (index < 0)
                notes.push(note);
        } else if (index >= 0) {
            notes.splice(index, 1);
        }

        if (state.isRecording) {
            if (velocity && Object.keys(notes).length == 1)
                state.write(note);
            return;
        }

        var newLasers = new Array(Laser.LASER_COUNT);

        notes.forEach(function(note) {
            var preset = state.presets[note] || [];
            preset.forEach(function(laser, i) {
                if (laser)
                    newLasers[j] = laser;
            });
        });

        newLasers.forEach(function(laser, i) {
            if (laser)
                state.lasers[i].setChannelValues(laser);
            else
                state.lasers[i].setBlackout(true);
        });
    };

    this.noteOff = function(note, velocity) {
        self.noteOn(note, 0);
    }

    this.reset = function() {
        notes = [];
    };
};
