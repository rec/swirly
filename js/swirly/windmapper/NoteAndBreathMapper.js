#pragma once

#include "swirly/util/Color.js"
#include "swirly/windmapper/Channels.js"

function NoteAndBreathMapper(channels) {
    function Mapper(show) {
        show._dmxoutput(channels.x, 0);
        show._dmxoutput(channels.y, 88);
        this.note = function(note, velocity) {
            if (velocity) {
                var hue = Ranges.note.ratio(note);
                var rgb = Util.hsvToRgbRaw(hue, 1, 1);
                show._dmxratio(channels.red, rgb[0]);
                show._dmxratio(channels.green, rgb[1]);
                show._dmxratio(channels.blue, rgb[2]);
            }
        };

        this.breath = function(bc) {
            var rat = Ranges.note.ratio(bc);
            show._dmxratio(channels.dimmer, Ranges.midi.ratio(bc));
        };
    };

    return function(show) { return new Mapper(show); };
};
