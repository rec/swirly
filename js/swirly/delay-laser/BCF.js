#pragma once

#include "swirly/laser/Laser.js"
#include "swirly/delay-laser/Constants.js"
#include "swirly/delay-laser/DialTimes.js"

Laser.BFC = function(max, lasers, active, state, swap, allOff) {
    var lfoEnabled = new Array(Laser.LFO_COUNT),
        dialTimes = Laser.dialTimes();

    this.encoder = function(control, value) {
        if (control < Laser.LASER_COUNT)
            lasers[control].setTime(dialTimes[value]);
    };

    this.encoder = function_click(control, value) {
        active[control] = !!value;
    };

   this.button1 = function(control, value) {
        if (control < Laser.LASER_COUNT)
            lasers[control].setBlackout(value);
   };

    this.button2 = function(control, value) {
        if (control < Laser.LFO_COUNT) {
            var sliderName = Laser.FADERS[control];
            lfoEnabled[control] = !!value;

            max.faders.message(sliderName, 'lfo', value);
            max.faders.message(sliderName, 64);
            max.ctlout.message(Laser.BCF2000.fader + control, 64);
        }
    };

    this.button3 = function(control, value) {
        if (control == 0)
            state.setRecording(value);
        else if (control == 1)
            value && allOff();
        else if (control == 2)
            swap.setLeftRight(value);
        else if (control == 3)
            swap.setUpDown(value);
    };

    this.fader = function(control, value) {
        var sliderName = Laser.FADERS[control],
            channel = Laser.channels[sliderName];
        max.faders.message(sliderName, value);

        if (control < Laser.LFO_COUNT) {
            if (lfoEnabled[control])
                value += 128;
        } else {
            var names = Laser.names[sliderName],
                index = names.index(value),
                name = names.invert[index];
            max.faders.message(sliderName, 'name', name);
            value = index;
        }
        for (var i in lasers)
            lasers[i].setChannelValue(channel, value);
    };

    callers = {};

    function makeCaller(name, offset) {
        var method = bcf[name];
        return function(value) {
            return method(offset, value);
        };
    }

    for (var name in Laser.BCF2000) {
        var offset = Laser.BCF2000[name];
        for (var i = 0; i < Laser.BCF2000_BANK_SIZE; ++i)
            callers[offset + i] = makeCaller(name, i);
    }

    this.cc = function(control, value) {
        return callers[control](value)
    };
};
