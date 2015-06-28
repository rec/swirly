#pragma once

#include "swirly/util/Color.js"
#include "swirly/show/Channels.js"


function makeRange(x) {
    return x && (
        typeof(x) == 'number' ? new Range(0, x) : new Range(x[0], x[1]));
};

function NoteAndBreathMapper(args) {
    args = args || {};
    var channels = Channel.moving,
        baseX = 90,
        baseY = 90;

    function Mapper(show) {
        show._dmxoutput(channels.x, baseX);
        show._dmxoutput(channels.y, baseY);
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
            var ratio = Ranges.note.ratio(bc);
            show._dmxratio(channels.dimmer, ratio);
            if (args.white)
                show._dmxratio(channels.white, ratio * args.white);
            if (args.effect_pos)
                show._dmxratio(channels.effect, ratio * args.effect_pos / 2);
            if (args.effect)
                show._dmxratio(channels.effect, 0.5 + ratio * args.effect / 2);

            var r2 = -1 + 2 * ratio;
            if (args.x)
                show._dmxratio(channels.x, r2 * args.x + baseX / 255);
            if (args.y)
                show._dmxratio(channels.y, r2 * args.y + baseY / 255);

        };
    };

    return function(show) {
        return new Mapper(show);
    };
};
