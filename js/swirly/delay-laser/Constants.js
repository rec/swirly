#pragma once

#include "swirly/laser/Laser.js"

Laser.LFO_COUNT = 6;
Laser.LASER_COUNT = 6;

Laser.max = {
    display: ['display1', 'display2', 'display3', 'display4', 'display5',
              'display6'],
    fader: ['zoom', 'xrot', 'yrot', 'zrot', 'hpos', 'vpos', 'color', 'pattern'],
    midi: ['ctlout', 'midiin', 'notein'],
    toggle: ['left_right', 'up_down'],
    other: ['dmxusbpro', 'save', 'times']
};

Laser.max.all = Laser.max.display + Laser.max.fader + Laser.max.midi +
    Laser.max.toggle + Laser.max_other;

Laser.MIDIIN = 'BCF2000 Port 1';
Laser.MIDIOUT = Laser.MIDIIN;
Laser.NOTEIN = 'Akai';
Laser.DMX = '/dev/cu.usbserial-6AYL2V8Z';
Laser.PRESET_FILE = '/development/swirly/js/swirly/delay-laser/presets.json'


Laser.BCF2000 = {
    button1: 65,
    button2: 73,
    button3: 89,
    click: 49,  // What is this?
    encoder: 1,
    encoder_click: 33,
    fader: 81,
};
