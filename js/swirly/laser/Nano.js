#pragma once

#include "swirly/laser/Bank.js"
#include "swirly/max/findObjects.js"
#include "swirly/util/logging.js"

Laser.Nano = function() {
    var BANK_SIZE = 8,
        COLOR_OFFSET = 62,
        PATTERN_OFFSET = 10,  // conservative guess.
        dmx = Max.findClass('dmxusbpro')[0],
        midiin = Max.findClass('midiin')[0],
        playMode = false,
        flashMode = false;

    dmx.message('/dev/cu.usbserial-6AYL2V8Z');
    midiin.message('nanoKONTROL SLIDER/KNOB');

    var multisliders = [];
    for (var i = 0; i < BANK_SIZE; ++i)
        multisliders.push(Max.findName('multislider[' + (i + 1) + ']')[0]);
    var bank = new Laser.Bank(multisliders, dmx);

    function subrange(name, begin, end) {
        var fader = Laser.channels[name];
        if (fader === undefined) {
            post('ERROR: Didn\'t understand channel name', name);
            return
        }

        var rangeRatio = (end - begin + 1) / 128;
        return function(value) {
            var scaled = begin + Math.floor((1 + value) * rangeRatio) - 1;
            bank.setFader(fader, scaled);
        };
    };

    function enable(index) {
        return function(value) {
            bank.setEnabled(index, value != 0);
        };
    };

    function sendBlackouts() {
        for (var i = 0; i < BANK_SIZE; ++i)
            bank.setBlackout(i, playMode === flashMode);
    };

    function play(value) {
        playMode = (value != 0);
        sendBlackouts();
    };

    function flash(value) {
        flashMode = (value != 0);
        sendBlackouts();
    }

    var commands = {
         0: subrange('color', COLOR_OFFSET, 255 - COLOR_OFFSET),
         1: subrange('pattern', PATTERN_OFFSET, 255 - PATTERN_OFFSET),
         2: subrange('zoom', 0, 127),
         3: subrange('xrot', 0, 127),
         4: subrange('yrot', 0, 127),
         5: subrange('zrot', 0, 127),
         6: subrange('hpos', 0, 127),
         7: subrange('vpos', 0, 127),

        12: subrange('zoom', 128, 255),
        13: subrange('xrot', 128, 255),
        14: subrange('yrot', 128, 255),
        15: subrange('zrot', 128, 255),
        16: subrange('hpos', 128, 255),
        17: subrange('vpos', 128, 255),

        20: enable(0),
        21: enable(1),
        22: enable(2),
        23: enable(3),
        24: enable(4),
        25: enable(5),
        26: enable(6),
        27: enable(7),

        41: play,
        44: flash,
    };

    this.receiveController = function(c, v) {
        var command = commands[c];
        if (command)
            command(v);
        else
            post('ERROR: don\'t understand controller ' + c + ': ' + v);
    };
};
