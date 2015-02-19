autowatch = 1;

#include "swirly/max/inlets.js"
#include "swirly/max/outlets.js"
#include "swirly/util/logging.js"

Max.SetOutlets(['lights', 'To lighting MIDI CC.'],
               ['level', 'Accumulated input level from 0 to 1.'])

function limit(x, begin, end) {
    return Math.max(begin, Math.min(end, x));
};

function toRange(ratio, begin, end) {
    var range = end - begin + 1;
    return limit(Math.floor(begin + range * ratio), begin, end);
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
        default: post("!!! ", h, ":", i, "\n");
    }

    post(r, " ", g, " ", b, "\n")
    return [toRange(r, 0, 127), toRange(g, 0, 127), toRange(b, 0, 127)];
}

var breath_level = 0, // 0..1
    mic_level = 0,  // 0..1
    note_level = 0, // 0..1
    note_min = 23,
    note_max = 105,

    tilt_min = 20,
    tilt_max = 30,

    dimmer_min = 4,
    dimmer_max = 67,

    channel_r = 6,
    channel_g = channel_r + 1,
    channel_b = channel_g + 1,
    channel_tilt = 2,
    channel_dimmer = 5,

    mic_level = -70,
    mic_limit = -5,
    mic_threshold = -70;

function levelOut() {
    var mic = Math.min(mic_limit, mic_level - mic_threshold) /
        (mic_limit - mic_threshold);
    var level = Math.max(mic, breath_level);
    outlet(0, channel_dimmer, toRange(level, dimmer_min, dimmer_max));
    outlet(0, channel_tilt, toRange(level, tilt_min, tilt_max));

    outlet(1, level);
};

Max.SetInlets(
    ['note',
     function(note) {
         var ratio = (note - note_min) / (note_max - note_min);
         var hue = limit(ratio, 0.0, 1.0);
         if (false)
         post('hue: ', hue, ' note: ', note, ' note_min: ', note_min,
              ' note_range: ', note_range, '\n');
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
     function(m) {
         mic_level = m;
         levelOut();
     },
     'Mic level in dB.'],

    ['threshold',
     function(t) {
         mic_threshold = t;
         levelOut();
     },
     'Mic minimum trigger threshold.'],

    ['limit',
     function(g) {
         mic_limit = g;
         levelOut();
     },
     'Mic limit trigger level.']
);

LOADED();
