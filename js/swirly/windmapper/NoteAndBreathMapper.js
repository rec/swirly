#pragma once

#include "swirly/util/Color.js"
#include "swirly/windmapper/Channels.js"

function NoteAndBreathMapper(channels) {
    function Mapper(show) {
        this.note = function(note, velocity) {
            if (velocity) {
                var hue = Ranges.note.ratio(note);
                var rgb = hsvToRgbRaw(hue, 1, 1);
                show._dmxratio(channels.red, rgb[0]);
                show._dmxratio(channels.green, rgb[1]);
                show._dmxratio(channels.blue, rgb[2]);
            }
        };

        this.breath = function(bc) {
            show._dmxratio(channels.dimmer, Ranges.note.ratio(bc));
        };
    };

    return function(show) { new Mapper(show); };
};
