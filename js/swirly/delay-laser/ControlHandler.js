#pragma once

#include "swirly/delay-laser/Constants.js"
#include "swirly/delay-laser/DialTimes.js"

Laser.ControlHandler = function(max, state) {
    var lfoEnabled = new Array(Laser.LFO_COUNT),
        dialTimes = Laser.dialTimes();

    this.encoder = function(control, value) {
        if (control < Laser.LASER_COUNT)
            state.lasers[control].setTime(dialTimes[value]);
    };

    this.encoder_click = function(control, value) {
        state.presets.setActive(control, value);
    };

    this.button1 = function(control, value) {
        if (control < Laser.LASER_COUNT)
            state.lasers[control].setBlackout(value);
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
            state.presets.setRecording(value);
        else if (control == 1)
            value && state.allOff();
        else if (control == 2)
            state.swap.setLeftRight(value);
        else if (control == 3)
            state.swap.setUpDown(value);
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
        for (var i in state.lasers)
            state.lasers[i].setChannelValue(channel, value);
    };
};
