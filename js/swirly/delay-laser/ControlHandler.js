#pragma once

#include "swirly/delay-laser/Constants.js"
#include "swirly/delay-laser/DialTimes.js"

Laser.ControlHandler = function(state) {
    var lfoEnabled = new Array(Laser.LFO_COUNT),
        dialTimes = Laser.dialTimes(),
        faders = state.max.faders,
        channelToName = Dict.invert(Laser.BCF2000),
        recordedControls = {},
        self = this;

    function replay() {
        Dict.forEach(recordedControls, function(value, control) {
            self.cc(control, value);
        });
    }

    function fader(control, value) {
        var sliderName = Laser.FADERS[control],
            channel = Laser.channels[sliderName];
        faders.message(sliderName, value);

        if (control < Laser.LFO_COUNT) {
            if (lfoEnabled[control])
                value += 128;
        } else {
            var names = Laser.names[sliderName],
                index = names.index(value),
                name = names.invert[index];
            faders.message(sliderName, 'name', name);
            value = index;
        }
        for (var i in state.lasers)
            state.lasers[i].setChannelValue(channel, value);
    }

    function encoder(control, value) {
        if (control < Laser.LASER_COUNT)
            state.lasers[control].setTime(dialTimes[value]);
        // Two unused dials here
    }

    function encoder_click(control, value) {
        if (control < Laser.LASER_COUNT)
            state.setActive(control, value);
        // Two unused toggle buttons here
    }

    function button1(control, value) {
        if (control < Laser.LASER_COUNT)
            state.lasers[control].setBlackout(value);

        else if (control == Laser.LASER_COUNT)
            state.swap.setLeftRight(value);

        else if (control == Laser.LASER_COUNT + 1)
            state.swap.setUpDown(value);
    }

    function button2(control, value) {
        if (control < Laser.LFO_COUNT) {
            var sliderName = Laser.FADERS[control];
            lfoEnabled[control] = !!value;

            faders.message(sliderName, 'lfo', value);
            faders.message(sliderName, 64);
            state.max.ctlout.message(Laser.BCF2000.fader + control, 64);
        } else {
            print('button2', control, value);
            // Two unused toggle buttons here
        }
    }

    function button3(control, value) {
        if (control == 0)
            value && state.allOff();
        else if (control == 1)
            value && replay();
        else if (control == 2)
            value and state.randomize();
        else if (control == 3)
            state.setRecording(value);
    }

    var handlers = {fader: fader,
                    encoder: encoder,
                    encoder_click: encoder_click,
                    button1: button1,
                    button2: button2,
                    button3: button3};

    this.cc = function(control, value) {
        recordedControls[control] = value;

        var offset = (control - 1) % Laser.BCF2000_BANK_SIZE,
            name = channelToName[control - offset],
            handler = handers[name];

        handler && handler(offset);
    };

    this.reset = function() {
        self.recordedControls = {};
    };
};
