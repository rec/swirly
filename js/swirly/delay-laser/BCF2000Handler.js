#pragma once

#include "swirly/delay-laser/Constants.js"
#include "swirly/delay-laser/DialTimes.js"

Laser.BCF2000Handler = function(state, restore) {
    var lfoEnabled = new Array(Laser.LFO_COUNT),
        dialTimes = Laser.dialTimes(),
        max = state.max;

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

    this.encoder = function(control, value) {
        if (control < Laser.LASER_COUNT)
            state.lasers[control].setTime(dialTimes[value]);
        // Two unused dials here
    };

    this.encoder_click = function(control, value) {
        if (control < Laser.LASER_COUNT)
            state.setActive(control, value);
        else
            print('encoder_click', control, value);
        // Two unused toggle buttons here
    };

    this.button1 = function(control, value) {
        if (control < Laser.LASER_COUNT)
            state.lasers[control].setBlackout(value);

        else if (control == Laser.LASER_COUNT)
            state.swap.setLeftRight(value);

        else if (control == Laser.LASER_COUNT + 1)
            state.swap.setUpDown(value);
   };

    this.button2 = function(control, value) {
        if (control < Laser.LFO_COUNT) {
            var sliderName = Laser.FADERS[control];
            lfoEnabled[control] = !!value;

            max.faders.message(sliderName, 'lfo', value);
            max.faders.message(sliderName, 64);
            max.ctlout.message(Laser.BCF2000.fader + control, 64);
        } else {
            print('button2', control, value);
            // Two unused toggle buttons here
        }
    };

    this.button3 = function(control, value) {
        if (control == 0)
            value && state.allOff();
        else if (control == 1)
            value && restore();
        else if (control == 2)
            value and state.randomize();
        else if (control == 3)
            state.setRecording(value);
    };
};
