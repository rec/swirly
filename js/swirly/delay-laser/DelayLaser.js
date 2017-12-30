#pragma once

#include "swirly/laser/Laser.js"
#include "swirly/max/findObjects.js"
#include "swirly/util/logging.js"

Laser.MIDIPORT = 'nanoKONTROL SLIDER/KNOB';
Laser.DMX = '/dev/cu.usbserial-6AYL2V8Z';

Laser.DelayLaser = function() {
    var box = Max.findAll(
        'color', 'dmxusbpro', 'pattern', 'zoom', 'xrot', 'yrot', 'zrot', 'hpos',
        'vpos', 'alloff', 'midiin', 'midiout');

    var dmx = box.dmxusbpro,
        channels = Laser.channels,
        colors = Laser.color,
        patterns = Laser.pattern;

    dmx.message(Laser.DMX);
    box.midiin.message(Laser.MIDIPORT);

    function Class(index) {
        var offset = 1 + index * 16,
            display = Max.find('display' + (index + 1)),
            blackout = true;

        sendTo(display, 3, offset);

        this.blackout = function(dmx, on) {
            if (!blackout != !on) {
                blackout = on;
                var value = blackout ? 0 : 0xFF;
                sendTo(display, 4, value);
                sendTo(display, 0,  [channels.mode, value]);
            }
        };

        this.setTime = function(value) {
            var time = dial_to_time(value);
            sendTo(display, 5,
        };
    };

    var laser = [Class(1), Class(2), Class(3), Class(4), Class(5), Class(6)];

    var DIAL = 0,
        BUTTON1 = 8,
        BUTTON2 = 16,
        FADER = 24;

    function dial(control, value) {
        if (control < 6)
            laser[control].setTime(value);
    };

    function button1(control, value) {
        if (control < 6)
            laser[control].blackout(value);
    };

    function button2(control, value) {
        if (control >= 2) {
        }
    };

    function fader(control, value) {
        if (control == 0) {
        } else if (control == 1) {
        } else {
        }
    };

    this.allOff = function(value) {
        lasers.forEach(function(laser) { laser.blackout(value); ]);
    };

    this.controller = function(control, value) {
        if (DIAL <= control < DIAL + 8)
            dial(control - DIAL, value);

        else if (BUTTON1 <= control < BUTTON1 + 8)
            button1(control - BUTTON1, value);

        else if (BUTTON2 <= control < BUTTON2 + 8)
            button2(control - BUTTON2, value);

        else if (FADER <= control < FADER + 8)
            fader(control - FADER, value);

        else
            print('Do not understand controller', control, value);
    };
};
