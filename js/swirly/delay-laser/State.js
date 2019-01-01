#pragma once

#include "swirly/delay-laser/Constants.js"
#include "swirly/delay-laser/LaserClass.js"
#include "swirly/delay-laser/Swap.js"
#include "swirly/midi/NoteNames.js"
#include "swirly/util/JsonFile.js"

Laser.State = function(max) {
    var self = this;

    this.swap = new Laser.Swap(max);
    this.presets = JsonFile.read(Laser.PRESET_FILE);
    this.lasers = [];

    for (var i = 0; i < Laser.LASER_COUNT; ++i)
        this.lasers.push(new Laser.Class(max.displays, i));

    this.reset = function() {
        self.isRecording = false;
        self.swap.reset();

        Laser.FADERS.forEach(function(name, i) {
            max.faders.message(name, 0);
            if (i < Laser.LFO_COUNT)
                max.faders.message(name, 'lfo', 0);
            else
                max.faders.message(name, 'name', Laser.names[name].invert[0]);

            Dict.forEach(Laser.BCF2000, function(control) {
                max.ctlout.message(control + i, 0);
            });
        });

        self.lasers.forEach(function(laser) {
            laser.reset();
        });
    };

    this.forEachActiveLaser = function(f) {
        self.lasers.forEach(function(laser, i) {
            laser.active && f(laser, i);
        });
    };

    this.allOff = function() {
        self.lasers.forEach(function(laser, i) {
            laser.setBlackout(0, true);
            max.ctlout.message(Laser.BCF2000.button1 + i, 0);
        });
    };

    this.randomize = function() {
        self.forEachActiveLaser(function(laser) {
            laser.randomize();
        });
    };

    this.write = function(note) {
        var state = [];
        self.forEachActiveLaser(function(laser, i) {
            state[i] = laser.serialize();
        });

        print('Writing', key, Midi.noteToName(note));
        self.presets[note] = state;
        JsonFile.write(Laser.PRESET_FILE, self.presets);
    };
};
