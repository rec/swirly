#pragma once

#include "swirly/laser/Laser.js"

Laser.LFO_COUNT = 6;
Laser.LASER_COUNT = 6;
Laser.DMX_CHANNELS = 9;

Laser.MAX_NAMES = [
    'displays', 'faders', 'ctlout', 'ctlout_menu', 'midiin_menu', 'notein_menu',
    'left_right', 'up_down', 'dmxusbpro', 'save', 'times'];

Laser.FADERS = [
    'zoom', 'xrot', 'yrot', 'zrot', 'hpos', 'vpos', 'color', 'pattern'];

Laser.MIDIIN = 'BCF2000 Port 1';
Laser.MIDIOUT = Laser.MIDIIN;
Laser.NOTEIN = 'Akai';
Laser.DMX = '/dev/cu.usbserial-6AYL2V8Z';
Laser.PRESET_FILE = '/development/swirly/js/swirly/delay-laser/presets.json'

Laser.BCF2000_BANK_SIZE = 8;

Laser.BCF2000 = {
    button1: 65,
    button2: 73,
    button3: 89,
    encoder: 1,
    encoder_click: 33,
    fader: 81,
};
