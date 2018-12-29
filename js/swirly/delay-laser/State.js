#pragma once


#include "swirly/delay-laser/Constants.js"
#include "swirly/delay-laser/LaserClass.js"
#include "swirly/delay-laser/Swap.js"
#include "swirly/max/findObjects.js"
#include "swirly/midi/NoteNames.js"
#include "swirly/util/JsonFile.js"

Laser.State = function(max) {
    var self = this;

    this.max = Max.findNames(Laser.MAX_NAMES);
    this.lasers = [];
    this.active = [];
    this.swap = new Laser.Swap(max);
    this.presets = JsonFile.read(Laser.PRESET_FILE);

    for (var i = 0; i < Laser.LASER_COUNT; ++i)
        this.lasers.push(new Laser.Class(max.displays, i));

    function forEachActive(f) {
        self.lasers.forEach(function(laser, i) {
            if (self.active[i])
                f(laser, i);
        });
    };

    this.allOff = function() {
        for (var i = 0; i < Laser.LASER_COUNT; ++i) {
            self.lasers[i].setBlackout(0, true);
            max.ctlout.message(Laser.BCF2000.button1 + i, 0);
        }
        self.action = [];
    };

    this.reset = function() {
        self.active = new Array(Laser.LASER_COUNT);
        self.swap.reset();
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
            self.lasers[i].reset();
    };

    this.randomize = function() {
        self.forEachActive(function(laser) {
            laser.randomize();
        });
    };

    this.setActive = function(control, value) {
        state.active[control] = !!value;
    };

    this.write = function(note) {
        print('Writing', key, Midi.noteToName(note));

        var lasers = new Array(Laser.LASER_COUNT);
        self.forEachActive(function(laser, i) {
            lasers[i] = laser.getState();
        });
        self.presets[note] = lasers;

        JsonFile.write(Laser.PRESET_FILE, self.presets);
    };
};
