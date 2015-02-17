#include "swirly/max/inlets.js"
#include "swirly/util/logging.js"

autowatch = 1;
outlets = 1;

function convertColor(color) {
    return Math.floor(Math.min(color * 128, 127));
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
    }

    return [convertColor(r), convertColor(g), convertColor(b)];
}



var breath_level = 0, // 0..1
    mic_level = 0,  // 0..1
    note_level = 0, // 0..1
    note_min = 10,
    note_range = 7 * 12,
    note_max = note_min + note_range - 1,

    tilt_min = 40,
    tilt_max = 60,
    tilt_range = tilt_max - tilt_min + 1,

    dimmer_min = 8,
    dimmer_max = 134,
    dimmer_range = dimmer_max - dimmer_min + 1,

    channel_r = 6,
    channel_g = channel_r + 1,
    channel_b = channel_g + 1,
    channel_tilt = 2,
    channel_dimmer = 5,

    gain = 1.0,
    threshold = 0.0;

function limit(x) {
    return Math.max(0.0, Math.min(1.0, x));
};

function levelOut() {
    var level = Math.max(mic_level, breath_level);
    var value = Math.min(dimmer_max, Math.floor((dimmer_min + level * dimmer_range) / 2));
    outlet(0, channel_dimmer, value);

    var value2 = Math.min(tilt_max, Math.floor(tilt_min + level * tilt_range) / 2);
    outlet(0, channel_tilt, Math.floor(value2));
};

Max.SetInlets(
    ['note',
     function(note) {
         var hue = limit((note - note_min) / note_range);
         var rgb = hsvToRgb(hue, 1.0, 1.0);
         outlet(0, channel_r, rgb[0]);
         outlet(0, channel_g, rgb[1]);
         outlet(0, channel_b, rgb[2]);
     },
     'Note number.'],

    ['breath',
     function(breath) {
         breath_level = breath / 127.0;
         levelOut();
     },
     'Breath control.'],

    ['mic',
     function(mic) {
         mic_level = Math.max(0.0, mic - threshold) * gain;
         levelOut();
     },
     'Mic level (float).'],

    ['gain',
     function(g) {
         gain = g;
     },
     'Mic gain.'],

    ['threshold',
     function(t) {
         threshold = t;
     },
     'Mic trigger threshold.']
);

LOADED();
