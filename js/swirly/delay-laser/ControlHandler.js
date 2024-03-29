#pragma once

#include "swirly/delay-laser/Constants.js"
#include "swirly/delay-laser/DialTimes.js"
#include "swirly/object/Dicti.js"

Laser.ControlHandler = function(max, state) {
    var lfoEnabled = [],
        dialTimes = Laser.dialTimes(),
        channelToName = Dicti.invert(Laser.BCF2000),
        recordedControls = {},
        self = this;

    function replay() {
        Dicti.forEach(recordedControls, function(value, control) {
            self.cc(control, value);
        });
    }

    var handlers = {
        fader: function(control, value) {
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
            state.forEachActiveLaser(function(laser) {
                laser.setChannelValue(channel, value);
            });
        },
        encoder: function(control, value) {
            if (control < Laser.LASER_COUNT)
                state.lasers[control].setTime(dialTimes[value]);
        },
        encoder_click: function(control, value) {
            if (control < Laser.LFO_COUNT) {
                var sliderName = Laser.FADERS[control];
                lfoEnabled[control] = !!value;
                max.faders.message(sliderName, 'lfo', value);
                // max.faders.message(sliderName, 64);
                max.ctlout.message(Laser.BCF2000.fader + control, 64);
            }
        },
        button1: function(control, value) {
            if (control < Laser.LASER_COUNT)
                state.lasers[control].setBlackout(value);

            else if (control == Laser.LASER_COUNT)
                state.swap.setLeftRight(value);

            else if (control == Laser.LASER_COUNT + 1)
                state.swap.setUpDown(value);
        },
        button2: function(control, value) {
            if (control < Laser.LASER_COUNT)
                state.lasers[control].setActive(!!value);
        },
        button3: function(control, value) {
            if (control == 0)
                value && state.allOff();
            else if (control == 1)
                value && replay();
            else if (control == 2)
                value && state.randomize();
            else if (control == 3)
                state.isRecording = !!value;
        }};

    this.cc = function(control, value) {
        recordedControls[control] = value;

        var offset = (control - 1) % Laser.BCF2000_BANK_SIZE,
            name = channelToName[control - offset],
            handler = handlers[name];

        if (handler)
            handler(offset, value);
        else
            print('Cannot understand', control, value);
    };
};
