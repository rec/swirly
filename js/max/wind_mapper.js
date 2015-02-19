autowatch = 1;

#include "swirly/max/inlets.js"
#include "swirly/max/outlets.js"
#include "swirly/util/logging.js"

Max.SetOutlets(['lights', 'To lighting MIDI CC.'],
               ['level', 'Accumulated input level from 0 to 1.'])

function Range(begin, end) {
    this.begin = (begin === undefined) ? 0 : begin;
    this.end = (end === undefined) ? 127 : end;
};

Range.prototype.limit = function(x) {
    return Math.floor(Math.min(this.end, Math.max(this.begin, x)));
}

Range.prototype.select = function(ratio) {
    var range = this.end - this.begin + 1;
    var w = range * ratio;
    var x = this.begin + w;
    return this.limit(x);
}

Range.prototype.ratio = function(entry) {
    entry = this.limit(entry);
    return (entry - this.begin) / (this.end - this.begin);
};

// From http://axonflux.com/handy-rgb-to-hsl-and-rgb-to-hsv-color-model-c

/**
 * Converts an HSV color value to RGB. Conversion formula
 * adapted from http://en.wikipedia.org/wiki/HSV_color_space.
 * Assumes h, s, and v are contained in the set [0, 1] and
 * returns r, g, and b in the set [0, 255].
 *
 * @param   Number  h       The hue
 * @param   Number  s       The saturation
 * @param   Number  v       The value
 * @return  Array           The RGB representation
 */
function hsvToRgb(h, s, v) {
    var r, g, b;

    var i = Math.floor(h * 6);
    var f = h * 6 - i;
    var p = v * (1 - s);
    var q = v * (1 - f * s);
    var t = v * (1 - (1 - f) * s);

    switch (i % 6) {
        case 0: r = v, g = t, b = p; break;
        case 1: r = q, g = v, b = p; break;
        case 2: r = p, g = v, b = t; break;
        case 3: r = p, g = q, b = v; break;
        case 4: r = t, g = p, b = v; break;
        case 5: r = v, g = p, b = q; break;
        default: post("Error ", h, ":", i, "\n");
    }

    return [range.midi.select(r),
            range.midi.select(g),
            range.midi.select(b)];
}

function Mapper(channel, range) {
    this.channel = channel;
    this.range = range;
};

Mapper.prototype.select = function(level) {
    outlet(0, this.channel, this.range.select(level));
};

var breath = 0;

var range = {};

range.midi = new Range();
range.note = new Range(23, 105);
range.pan = new Range();
range.tilt = new Range();
range.dimmer = new Range(4, 67);

var channel = {};

channel.pan = 0;
channel.tilt = channel.pan + 1;
channel.dimmer = channel.tilt + 2;
channel.r = channel.dimmer + 1;
channel.g = channel.r + 1;
channel.b = channel.g + 1;

var dimmer = new Mapper(channel.dimmer, range.dimmer),
    pan = new Mapper(channel.pan, range.pan),
    tilt = new Mapper(channel.tilt, range.tilt);

function levelOut() {
    var level = range.midi.ratio(breath);
    outlet(1, level);
    dimmer.select(level);
    tilt.select(level);
    pan.select(level);
};

Max.SetInlets(
    ['note',
     function(note) {
         var hue = range.note.ratio(note);
         var rgb = hsvToRgb(hue, 1.0, 1.0);
         outlet(0, channel.r, rgb[0]);
         outlet(0, channel.g, rgb[1]);
         outlet(0, channel.b, rgb[2]);
     },
     'Note number.'],

    ['breath',
     function(x) {
         breath = x;
         levelOut();
     },
     'Breath control.'],

    ['pan_min',
     function(x) {
         pan.range.begin = Number(x);
         levelOut();
     },
     'Minimum pan.'],

    ['pan_max',
     function(x) {
         pan.range.end = Number(x);
         levelOut();
     },
     'Maximum pan.'],

    ['tilt_begin',
     function(x) {
         tilt.range.begin = Number(x);
         levelOut();
     },
     'Minimum tilt.'],

    ['tilt_max',
     function(x) {
         tilt.range.end = Number(x);
         levelOut();
     },
     'Maximum tilt.']
);

LOADED();
