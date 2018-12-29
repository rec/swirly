#pragma once

#include "swirly/delay-laser/Constants.js"
#include "swirly/delay-laser/LaserClass.js"
#include "swirly/delay-laser/Swap.js"

Laser.State = function(max) {
    var self = this;

    this.lasers = [];
    this.swap = new Laser.Swap(max);

    this.allOff = function() {
        for (var i = 0; i < Laser.LASER_COUNT; ++i) {
            self.lasers[i].setBlackout(0, true);
            max.ctlout.message(Laser.BCF2000.button1 + i, 0);
        }
    };

    this.reset = function() {
        self.swap.setChannels();
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

    for (var i = 0; i < Laser.LASER_COUNT; ++i)
        this.lasers.push(new Laser.Class(max.displays, i));
};
