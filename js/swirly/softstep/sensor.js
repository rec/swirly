#pragma once

#include "swirly/softstep/softstep.js"

Softstep.Sensor = function(output) {
    var self = this;
    self.origin = 1;

    var sensorsPerPad = 4;
    var firstSensor = 40;
    var lastSensor = 86;
    var keyList = [5, 0, 6, 1, 7, 2, 8, 3, 9, 4, 'nav'];
    var midi;
    var listening;

    self.Clear = function() {
        midi = [];
        listening = true;
    };

    self.Clear();

    function controller(cc, value) {
        var key, sensor = 0;
        if (cc < firstSensor || cc > lastSensor || (cc in [84, 85])) {
            print("swirly/softstep/sensor.js: Don't understand controller", cc);
            return;
        }

        if (cc == lastSensor) {
            key = 'pedal';
        } else {
            var index = Math.floor((cc - firstSensor) / sensorsPerPad);
            key = keyList[index];
            sensor = cc % 4;
        }

        if (key != 'nav' && key != 'pedal')
            key += self.origin;

        output(key, sensor + self.origin, value);
    };

    self.MidiIn = function(bytes) {
        var byte = bytes[0];
        var isData = false;
        if (byte >= 0xc0)
            listening = false;
        else if (byte >= 0xb0)
            listening = true;
        else if (byte >= 0x80)
            listening = false;
        else
            isData = true;

        if (isData && listening) {
            midi.push(byte);
            if (midi.length >= 2) {
                controller(midi[0], midi[1]);
                midi = [];
            }
        }
    };
};
