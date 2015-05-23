#pragma once

#include "swirly/util/Color.js"
#include "swirly/windmapper/Channels.js"


function makeRange(x) {
    return x && (
        typeof(x) == 'number' ? new Range(0, x) : new Range(x[0], x[1]));
};

function OldNoteAndBreathMapper(args) {
    args = args || {};
    var channels = Channel.moving;

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

        var parameters = [
            'x', 'y', 'partition', 'inside', 'strobe', 'white', 'effect'];

        this.breath = function(bc) {
            var ratio = Ranges.note.ratio(bc);
            // post('!!!!', ratio, '\n');
            show._dmxratio(channels.dimmer, ratio);
            return;
            for (var i in parameters) {
                var name = parameters[i], value = args[name];
                if (value) {
                    post('!!!!', name, value, value * ratio, '\n');
                    show._dmxratio(channels[name], value * ratio);
                }
            }
        };
    };

    return function(show) { return new Mapper(show); };
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
            if (args.effect)
                show._dmxratio(channels.effect, ratio * args.effect);
            if (args.x) {

            }
        };
    };

    return function(show) { return new Mapper(show); };
};
