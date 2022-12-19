#pragma once

#include "swirly/object/Dicti.js"

var Laser = {
    channels: {
        mode: 0,
        pattern: 1,
        zoom: 2,
        xrot: 3,
        yrot: 4,
        zrot: 5,
        hpos: 6,
        vpos: 7,
        color: 8
    },

    color: {
        all: 0,
        red: 64,
        green: 96,
        blue: 128,
        yellow: 160,
        pink: 192,
        cyan: 224
    },

    pattern: {
        circle: 0,
        spike_circle: 8,
        triangle: 16,
        square: 24,
        spike_square: 32,
        square_in_square: 40,
        maltese_cross: 48,
        star: 56,
        ell: 64,
        hourglass: 72,
        spiral: 80,
        cees: 88,
        logarithmic: 96,
        two_quarter_circle: 104,
        specs: 112,
        wave: 120,
        vee: 128,
        em: 136,
        saw: 144,
        line: 152,
        three_lines: 160,
        joined_line: 168,
        parallel_lines: 176,
        x: 184,
        skew: 192,
        four_lines: 200,
        two_squares: 208,
        four_squares: 216,
        one_intense_square: 224,
        dotted_line: 232,
        dotted_semicircle: 240,
        random_dots: 248
    }
};

Laser.names = {
    color: {
        value: Laser.color,
        invert: Dicti.invert(Laser.color),
        index: function(i) { return 32 * (1 + Math.floor(i * 7 / 128)); },
    },
    pattern: {
        value: Laser.pattern,
        invert: Dicti.invert(Laser.pattern),
        index: function(i) { return 8 * Math.floor(i * 32 / 128); },
    }
};

Laser.names.color.invert[32] = 'all';
