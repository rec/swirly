#pragma once

#include "swirly/laser/Laser.js"
#include "swirly/max/findObjects.js"
#include "swirly/util/logging.js"

Laser.Laser = function(offset) {
    this.blackout
};

Laser.MIDIPORT = 'nanoKONTROL SLIDER/KNOB';
Laser.DMX = '/dev/cu.usbserial-6AYL2V8Z';

Laser.DelayLaser = function(midiport) {
    dmx.message(Laser.DMX);
    midiin.message(midiport || Laser.MIDIPORT);

    var displays = [];
    for (var i = 0; i < BANK_SIZE; ++i)
        displays.push(Max.find('display' + (i + 1)));

    var boxes = Max.findAll(
        'color', 'pattern', 'zoom', 'xrot', 'yrot', 'zrot', 'hpos', 'vpos',
        'alloff', 'midiin', 'midiout');

    var lasers = [Laser.Laser(1), Laser.Laser(17), Laser.Laser(33),
                  Laser.Laser(49), Laser.Laser(65), Laser.Laser(81)];

    function dial(control, value) {
    };

    function button1(control, value) {
    };

    function button2(control, value) {
    };

    function fader(control, value) {
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
