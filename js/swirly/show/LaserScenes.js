#pragma once

#include "swirly/show/Show.js"

Show.laserScenes = function() {
    function none() {}

    var blackout = 0,
        auto = 64,
        sound = 128,
        manual = 192;

    var all = 0,
        red = 64,
        green = 96,
        blue = 128,
        yellow = 160,
        pink = 192,
        cyan = 224;

    var circle = 0,
        spike_circle = 8,
        triangle = 16,
        square = 24,
        spike_square = 32,
        square_in_square = 40,
        maltese_cross = 48,
        star = 56,
        ell = 64,
        hourglass = 72,
        spiral = 80,
        cees = 88,
        logarithmic = 96,
        two_quarter_circle = 104,
        specs = 112,
        wave = 120,
        vee = 128,
        em = 136,
        saw = 144,
        line = 152,
        three_lines = 160,
        joined_line = 168,
        parallel_lines = 176,
        x = 184,
        skew = 192,
        four_lines = 200,
        two_squares = 208,
        four_squares = 216,
        one_intense_square = 224,
        dotted_line = 232,
        dotted_semicircle = 240,
        random_dots = 248;

    var scenes = {
        blackout: [blackout, circle, 64, 64, 64, 64, 64, 64, green],

        green_circle: [manual, circle, 64, 64, 64, 64, 64, 64, green],
        green_square: [manual, square, 64, 64, 64, 64, 64, 64, green],
        green_circle_moving: [manual, circle, 64, 64, 64, 64, 200, 64, green],
        green_circle_mirror: [manual, circle, 64, 64, 64, 64, 184, 64, green],
        green_square_moving: [manual, square, 64, 64, 64, 64, 200, 64, green],
        green_square_mirror: [manual, square, 64, 64, 64, 64, 184, 64, green],

        red_circle: [manual, circle, 64, 64, 64, 64, 64, 64, red],
        red_square: [manual, square, 64, 64, 64, 64, 64, 64, red],
        red_circle_moving: [manual, circle, 64, 64, 64, 64, 64, 200, red],
        red_circle_mirror: [manual, circle, 64, 64, 64, 64, 64, 184, red],
        red_square_moving: [manual, square, 64, 64, 64, 64, 200, 64, red],
        red_square_mirror: [manual, square, 64, 64, 64, 64, 184, 64, red],

        blue_circle: [manual, circle, 64, 64, 64, 64, 64, 64, blue],
        blue_square: [manual, square, 64, 64, 64, 64, 64, 64, blue],
        blue_circle_moving: [manual, circle, 64, 64, 64, 64, 64, 200, blue],
        blue_circle_mirror: [manual, circle, 64, 64, 64, 64, 64, 184, blue],
        blue_square_moving: [manual, square, 64, 64, 64, 64, 64, 200, blue],
        blue_square_mirror: [manual, square, 64, 64, 64, 64, 64, 184, blue],

        yellow_spiral_moving: [manual, spiral, 150, 64, 64, 64, 225, 64, yellow],
        yellow_spiral_mirror: [manual, spiral, 225, 64, 64, 64, 150, 64, yellow],

        auto: [auto, circle, 64, 64, 64, 64, 64, 64, blue],
    };

    var lscenes = [
        [],

        [scenes.green_square],
        [undefined, scenes.green_square],
        [scenes.green_square_moving],
        [undefined, scenes.green_square_moving],
        [scenes.red_circle_moving, scenes.red_circle_moving],

        [scenes.green_square],
        [undefined, scenes.green_square],
        [scenes.green_square_moving],
        [undefined, scenes.green_square_moving],
        [scenes.red_circle_moving, scenes.red_circle_moving, scenes.red_circle_moving, scenes.red_circle_moving],

        [scenes.green_square],
        [scenes.green_square_moving],
        [scenes.green_square_mirror, scenes.green_square_moving],
        [scenes.red_circle_mirror, scenes.red_cicle_moving],
        [scenes.yellow_spiral_moving, scenes.yellow_spiral_mirror],

        [scenes.blue_circle_moving, scenes.blue_circle_moving, scenes.blue_circle_moving, scenes.blue_circle_moving],
        [scenes.green_square],
        [undefined, scenes.green_square],
        [scenes.green_square_moving],
        [undefined, scenes.green_square_moving],
        [scenes.red_circle_moving, scenes.red_circle_moving],

        [scenes.green_square],
        [undefined, scenes.green_square],
        [scenes.green_square_moving],
        [undefined, scenes.green_square_moving],
        [scenes.red_circle_moving, scenes.red_circle_moving, scenes.red_circle_moving, scenes.red_circle_moving],

        [scenes.green_square],
        [scenes.green_square_moving],
        [scenes.green_square_mirror, scenes.green_square_moving],
        [scenes.red_circle_mirror, scenes.red_cicle_moving],
        [scenes.yellow_spiral_moving, scenes.yellow_spiral_mirror],

        [scenes.blue_circle_moving, scenes.blue_circle_moving, scenes.blue_circle_moving, scenes.blue_circle_moving],
        [scenes.green_square],
        [undefined, scenes.green_square],
        [scenes.green_square_moving],
        [undefined, scenes.green_square_moving],
        [scenes.red_circle_moving, scenes.red_circle_moving],

        [scenes.green_square],
        [undefined, scenes.green_square],
        [scenes.green_square_moving],
        [undefined, scenes.green_square_moving],
        [scenes.red_circle_moving, scenes.red_circle_moving, scenes.red_circle_moving, scenes.red_circle_moving],

        [scenes.green_square],
        [scenes.green_square_moving],
        [scenes.green_square_mirror, scenes.green_square_moving],
        [scenes.red_circle_mirror, scenes.red_cicle_moving],
        [scenes.yellow_spiral_moving, scenes.yellow_spiral_mirror],

        [scenes.blue_circle_moving, scenes.blue_circle_moving, scenes.blue_circle_moving, scenes.blue_circle_moving],
        [scenes.green_square],
        [undefined, scenes.green_square],
        [scenes.green_square_moving],
        [undefined, scenes.green_square_moving],
        [scenes.red_circle_moving, scenes.red_circle_moving],

        [scenes.green_square],
        [undefined, scenes.green_square],
        [scenes.green_square_moving],
        [undefined, scenes.green_square_moving],
        [scenes.red_circle_moving, scenes.red_circle_moving, scenes.red_circle_moving, scenes.red_circle_moving],

        [scenes.green_square],
        [scenes.green_square_moving],
        [scenes.green_square_mirror, scenes.green_square_moving],
        [scenes.red_circle_mirror, scenes.red_cicle_moving],
        [scenes.yellow_spiral_moving, scenes.yellow_spiral_mirror],

        [scenes.blue_circle_moving, scenes.blue_circle_moving, scenes.blue_circle_moving, scenes.blue_circle_moving],

        [scenes.green_square],
        [undefined, scenes.green_square],
        [scenes.green_square_moving],
        [undefined, scenes.green_square_moving],
        [scenes.red_circle_moving, scenes.red_circle_moving],

        [scenes.green_square],
        [undefined, scenes.green_square],
        [scenes.green_square_moving],
        [undefined, scenes.green_square_moving],
        [scenes.red_circle_moving, scenes.red_circle_moving, scenes.red_circle_moving, scenes.red_circle_moving],

        [scenes.green_square],
        [scenes.green_square_moving],
        [scenes.green_square_mirror, scenes.green_square_moving],
        [scenes.red_circle_mirror, scenes.red_cicle_moving],
        [scenes.yellow_spiral_moving, scenes.yellow_spiral_mirror],

        [scenes.blue_circle_moving, scenes.blue_circle_moving, scenes.blue_circle_moving, scenes.blue_circle_moving],
        [scenes.green_square],
        [undefined, scenes.green_square],
        [scenes.green_square_moving],
        [undefined, scenes.green_square_moving],
        [scenes.red_circle_moving, scenes.red_circle_moving],

        [scenes.green_square],
        [undefined, scenes.green_square],
        [scenes.green_square_moving],
        [undefined, scenes.green_square_moving],
        [scenes.red_circle_moving, scenes.red_circle_moving, scenes.red_circle_moving, scenes.red_circle_moving],

        [scenes.green_square],
        [scenes.green_square_moving],
        [scenes.green_square_mirror, scenes.green_square_moving],
        [scenes.red_circle_mirror, scenes.red_cicle_moving],
        [scenes.yellow_spiral_moving, scenes.yellow_spiral_mirror],

        [scenes.blue_circle_moving, scenes.blue_circle_moving, scenes.blue_circle_moving, scenes.blue_circle_moving],
    ];

    var keyScenes = [];

    print('Maximum scene number is', lscenes.length - 1);
    print('Maximum key scene number is', keyScenes.length - 1);

    return {blackout: scenes,
            scenes: lscenes,
            keyScenes: keyScenes};
};
