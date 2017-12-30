#pragma once

#include "swirly/laser/Laser.js"
#include "swirly/delay-laser/LaserClass.js"
#include "swirly/delay-laser/DialTimes.js"
#include "swirly/max/findObjects.js"
#include "swirly/util/logging.js"

Laser.MIDIIN = 'BCF2000 Port 1';
Laser.MIDIOUT = Laser.MIDIIN;
Laser.DMX = '/dev/cu.usbserial-6AYL2V8Z';
Laser.FADERS = [
    'zoom', 'xrot', 'yrot', 'zrot', 'hpos', 'vpos', 'color', 'pattern'];
Laser.FADER_HAS_LFO = [true, true, true, true, true, true, false, false];

Laser.LASER_COUNT = 6;
Laser.LFO_COUNT = 6;

BFC2000 = {
    button1: 65,
    button2: 73,
    button3: 89,
    click: 49,
    encoder: 17,
    fader: 0,
};

Laser.DelayLaser = function(minTime, maxTime) {
    var max = Max.findByName(),
        self = this,
        dialTimes = Laser.dialTimes(minTime, maxTime);

    max.dmxusbpro.message(Laser.DMX);
    max.midiin.message(Laser.MIDIIN);
    max.midiout.message(Laser.MIDIOUT);

    var laser = [];
    for (var i = 0; i < Laser.LASER_COUNT; ++i)
        laser.push(Laser.Class(i, maxTime));

    var lfo = [];
    for (var i = 0; i < Laser.LFO_COUNT; ++i)
        lfo.push(false);

    this.encoder = function(control, value) {
        if (control < Laser.LASER_COUNT)
            laser[control].setTime(dialTimes[value]);
    };

    this.button1 = function(control, value) {
        if (control < Laser.LASER_COUNT)
            laser[control].blackout(value);
    };

    this.button2 = function(control, value) {
        if (Laser.FADER_HAS_LFO[control]) {
            lfo[control] = !!value;
            max.ccout.message(BFC2000.fader + control, 64);
        }
    };

    this.button3 = function(control, value) {
        if (control == 0) {
            self.allOff();
            // might loop!
            // max.ccout.message(BFC2000.button3 + control, 64);
        }
    };

    this.click = function(control, value) {
        print('click', control, value);
    };

    this.fader = function(control, value) {
        var sliderName = Laser.FADERS[control],
            slider = max[sliderName];
        slider.message(value);

        if (Laser.FADER_HAS_LFO[control]) {
            if (lfo[control])
                value += 128;
        } else {
            var names = Laser.names[sliderName],
                index = names.index(value),
                name = names.invert[index];
            slider.message('name', name);
            value = index;
        }
        for (var i in laser)
            laser.send(control, value);
    };

    this.allOff = function() {
        for (var i = 0; i < Laser.LASER_COUNT; ++i) {
            laser[i].blackout(0);
            max.ccout.message(BFC2000.button1 + i, 0);
        }
    };

    this.cc = function(control, value) {
        for (var name in BFC2000) {
            var c = BFC2000[name]
            if (c <= control && control < c + 8)
                return commands[c](control - c, value);
        }

        print('Do not understand controller', control, value);
    };
};
