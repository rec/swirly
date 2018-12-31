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
    this.active = [];

    for (var i = 0; i < Laser.LASER_COUNT; ++i)
        this.lasers.push(new Laser.Class(max.displays, i));

    this.reset = function() {
        self.isRecording = false;
        self.active = [];
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

    this.forEachActive = function(f) {
        self.lasers.forEach(function(laser, i) {
            self.active[i] && f(laser, i);
        });
    };

    this.allOff = function() {
        self.lasers.forEach(function(laser, i) {
            laser.setBlackout(0, true);
            max.ctlout.message(Laser.BCF2000.button1 + i, 0);
        });
        self.active = [];
    };

    this.randomize = function() {
        self.forEachActive(function(laser) {
            laser.randomize();
        });
    };

    this.write = function(note) {
        var state = [];
        self.forEachActive(function(laser, i) {
            state[i] = laser.getState();
        });

        print('Writing', key, Midi.noteToName(note));
        self.presets[note] = state;
        JsonFile.write(Laser.PRESET_FILE, self.presets);
    };
};
