#pragma once

#include "swirly/laser/Bank.js"
#include "swirly/max/findObjects.js"
#include "swirly/util/logging.js"

Laser.Nano = function() {
    var BANK_SIZE = 8;
    var dmx = Max.findClass('dmxusbpro')[0];
    var midiin = Max.findClass('midiin')[0];
    var playMode = false;

    dmx.message('/dev/cu.usbserial-6AYL2V8Z');
    midiin.message('nanoKONTROL SLIDER/KNOB');

    var multisliders = [];
    for (var i = 0; i < BANK_SIZE; ++i)
        multisliders.push(Max.findName('multislider[' + (i + 1) + ']')[0]);
    var bank = new Laser.Bank(multisliders, dmx);

    function subrange(name, begin, end) {
        var fader = Laser.channels[name];
        if (fader === undefined) {
            post('ERROR: Didn\'t understand channel name', name, '\n');
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
            Postln('enable', index, value);
            bank.setEnabled(index, value != 0);
        };
    };

    function blackout(index) {
        return function(value) {
            var isOn = value != 0;
            bank.setBlackout(index, playMode ? isOn : !isOn);
        };
    };

    function play(value) {
        playMode = (value != 0);
        for (var i = 0; i < BANK_SIZE; ++i)
            bank.setBlackout(i, !playMode);
    };

    var commands = {
         0: subrange('pattern', 0, 255),
         1: subrange('zoom', 0, 127),
         2: subrange('xrot', 0, 127),
         3: subrange('yrot', 0, 127),
         4: subrange('zrot', 0, 127),
         5: subrange('hpos', 0, 127),
         6: subrange('vpos', 0, 127),
         7: subrange('color', 0, 255),

        10: subrange('pattern', 128, 255),
        11: subrange('zoom', 128, 255),
        12: subrange('xrot', 128, 255),
        13: subrange('yrot', 128, 255),
        14: subrange('zrot', 128, 255),
        15: subrange('hpos', 128, 255),
        16: subrange('vpos', 128, 255),

        20: enable(0),
        21: enable(1),
        22: enable(2),
        23: enable(3),
        24: enable(4),
        25: enable(5),
        26: enable(6),
        27: enable(7),

        30: blackout(0),
        31: blackout(1),
        32: blackout(2),
        33: blackout(3),
        34: blackout(4),
        35: blackout(5),
        36: blackout(6),
        37: blackout(7),

        41: play,
    };

    this.receiveController = function(c, v) {
        var command = commands[c];
        if (command)
            command(v);
        else
            post('ERROR: don\'t understand controller', c);
    };
};
