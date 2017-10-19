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

    var blackout_scene = [blackout, circle, 64, 64, 64, 64, 64, 64, green],
        green_circle = [manual, circle, 64, 64, 64, 64, 64, 64, green],
        green_square = [manual, square, 64, 64, 64, 64, 64, 64, green],
        green_circle_moving = [manual, circle, 64, 64, 64, 64, 200, 64, green],
        green_circle_mirror = [manual, circle, 64, 64, 64, 64, 184, 64, green],
        green_square_moving = [manual, square, 64, 64, 64, 64, 200, 64, green],
        green_square_mirror = [manual, square, 64, 64, 64, 64, 184, 64, green],
        red_circle = [manual, circle, 64, 64, 64, 64, 64, 64, red],
        red_square = [manual, square, 64, 64, 64, 64, 64, 64, red],
        red_circle_moving = [manual, circle, 64, 64, 64, 64, 64, 200, red],
        red_circle_mirror = [manual, circle, 64, 64, 64, 64, 64, 184, red],
        red_square_moving = [manual, square, 64, 64, 64, 64, 200, 64, red],
        red_square_mirror = [manual, square, 64, 64, 64, 64, 184, 64, red],
        blue_circle = [manual, circle, 64, 64, 64, 64, 64, 64, blue],
        blue_square = [manual, square, 64, 64, 64, 64, 64, 64, blue],
        blue_circle_moving = [manual, circle, 64, 64, 64, 64, 64, 200, blue],
        blue_circle_mirror = [manual, circle, 64, 64, 64, 64, 64, 184, blue],
        blue_square_moving = [manual, square, 64, 64, 64, 64, 64, 200, blue],
        blue_square_mirror = [manual, square, 64, 64, 64, 64, 64, 184, blue],
        yellow_spiral_moving = [manual, spiral, 150, 64, 64, 64, 225, 64, yellow],
        yellow_spiral_mirror = [manual, spiral, 225, 64, 64, 64, 150, 64, yellow],
        auto_scene = [auto, circle, 64, 64, 64, 64, 64, 64, blue];

    var lscenes = [
        [],

        [green_square],
        [undefined, green_square],
        [green_square_moving],
        [undefined, green_square_moving],
        [red_circle_moving, red_circle_moving],

        [green_square],
        [undefined, green_square],
        [green_square_moving],
        [undefined, green_square_moving],
        [red_circle_moving, red_circle_moving, red_circle_moving, red_circle_moving],

        [green_square],
        [green_square_moving],
        [green_square_mirror, green_square_moving],
        [red_circle_mirror, red_circle_moving],
        [yellow_spiral_moving, yellow_spiral_mirror],

        [blue_circle_moving, blue_circle_moving, blue_circle_moving, blue_circle_moving],
        [green_square],
        [undefined, green_square],
        [green_square_moving],
        [undefined, green_square_moving],
        [red_circle_moving, red_circle_moving],

        [green_square],
        [undefined, green_square],
        [green_square_moving],
        [undefined, green_square_moving],
        [red_circle_moving, red_circle_moving, red_circle_moving, red_circle_moving],

        [green_square],
        [green_square_moving],
        [green_square_mirror, green_square_moving],
        [red_circle_mirror, red_circle_moving],
        [yellow_spiral_moving, yellow_spiral_mirror],

        [blue_circle_moving, blue_circle_moving, blue_circle_moving, blue_circle_moving],
        [green_square],
        [undefined, green_square],
        [green_square_moving],
        [undefined, green_square_moving],
        [red_circle_moving, red_circle_moving],

        [green_square],
        [undefined, green_square],
        [green_square_moving],
        [undefined, green_square_moving],
        [red_circle_moving, red_circle_moving, red_circle_moving, red_circle_moving],

        [green_square],
        [green_square_moving],
        [green_square_mirror, green_square_moving],
        [red_circle_mirror, red_circle_moving],
        [yellow_spiral_moving, yellow_spiral_mirror],

        [blue_circle_moving, blue_circle_moving, blue_circle_moving, blue_circle_moving],
        [green_square],
        [undefined, green_square],
        [green_square_moving],
        [undefined, green_square_moving],
        [red_circle_moving, red_circle_moving],

        [green_square],
        [undefined, green_square],
        [green_square_moving],
        [undefined, green_square_moving],
        [red_circle_moving, red_circle_moving, red_circle_moving, red_circle_moving],

        [green_square],
        [green_square_moving],
        [green_square_mirror, green_square_moving],
        [red_circle_mirror, red_circle_moving],
        [yellow_spiral_moving, yellow_spiral_mirror],

        [blue_circle_moving, blue_circle_moving, blue_circle_moving, blue_circle_moving],

        [green_square],
        [undefined, green_square],
        [green_square_moving],
        [undefined, green_square_moving],
        [red_circle_moving, red_circle_moving],

        [green_square],
        [undefined, green_square],
        [green_square_moving],
        [undefined, green_square_moving],
        [red_circle_moving, red_circle_moving, red_circle_moving, red_circle_moving],

        [green_square],
        [green_square_moving],
        [green_square_mirror, green_square_moving],
        [red_circle_mirror, red_circle_moving],
        [yellow_spiral_moving, yellow_spiral_mirror],

        [blue_circle_moving, blue_circle_moving, blue_circle_moving, blue_circle_moving],
        [green_square],
        [undefined, green_square],
        [green_square_moving],
        [undefined, green_square_moving],
        [red_circle_moving, red_circle_moving],

        [green_square],
        [undefined, green_square],
        [green_square_moving],
        [undefined, green_square_moving],
        [red_circle_moving, red_circle_moving, red_circle_moving, red_circle_moving],

        [green_square],
        [green_square_moving],
        [green_square_mirror, green_square_moving],
        [red_circle_mirror, red_circle_moving],
        [yellow_spiral_moving, yellow_spiral_mirror],

        [blue_circle_moving, blue_circle_moving, blue_circle_moving, blue_circle_moving],
    ];

    var keyScenesOld = [
        [manual, spiral, 64, 64, 64, 64, 64, 64, green],
        [manual, spiral, 64, 64, 64, 64, 64, 64, blue],
        [manual, spiral, 64, 64, 64, 64, 64, 64, red],

        [manual, spiral, 65, 64, 64, 64, 66, 64, green],
        [manual, spiral, 66, 64, 64, 64, 67, 64, blue],
        [manual, spiral, 67, 64, 64, 64, 64, 68, red],

        [manual, circle, 64, 64, 64, 64, 64, 64, green],
        [manual, circle, 64, 64, 64, 64, 64, 64, blue],
        [manual, random_dots, 64, 64, 64, 64, 64, 64, red],

        [manual, maltese_cross, 64, 64, 64, 64, 64, 64, yellow],
        [manual, wave, 64, 64, 64, 64, 64, 64, pink],
        [manual, dotted_line, 64, 64, 64, 64, 64, 64, cyan],

        [manual, maltese_cross, 64, 64, 64, 64, 64, 64, yellow],
        [manual, wave, 64, 64, 64, 64, 64, 64, pink],
        [manual, dotted_line, 64, 64, 64, 64, 64, 64, cyan],




        [manual, random_dots, 64, 64, 64, 64, 200, 64, green],
        [manual, one_intense_square, 64, 64, 64, 64, 64, 184, blue],
        [manual, one_intense_square, 64, 64, 64, 64, 64, 184, red],

        [manual, spiral, 66, 64, 64, 64, 64, 64, green],
        [manual, spiral, 69, 64, 64, 64, 64, 184, blue],
        [manual, spiral, 124, 64, 64, 64, 64, 184, red],
    ];

    var keyScenes = [
        [0, [manual, spiral, 127, 127, 127, 127, 127, 127, green]],
        [0, [manual, spiral, 127, 127, 127, 127, 64, 127, green]],
        [0, [manual, spiral, 127, 127, 127, 127, 0, 127, green]],

        [0, [manual, spiral, 127, 127, 127, 127, 127, 127, red]],
        [0, [manual, spiral, 127, 127, 127, 127, 64, 127, red]],
        [0, [manual, spiral, 127, 127, 127, 127, 0, 127, red]],

        [0, [manual, spiral, 127, 127, 127, 127, 127, 127, blue]],
        [0, [manual, spiral, 127, 127, 127, 127, 64, 127, blue]],
        [0, [manual, spiral, 127, 127, 127, 127, 0, 127, blue]],

        [0, [manual, spiral, 127, 127, 127, 127, 127, 127, yellow]],
        [0, [manual, spiral, 127, 127, 127, 127, 64, 127, yellow]],
        [0, [manual, spiral, 127, 127, 127, 127, 0, 127, yellow]],


        [1, [manual, spiral, 127, 127, 127, 127, 127, 127, green]],
        [1, [manual, spiral, 127, 127, 127, 127, 64, 127, green]],
        [1, [manual, spiral, 127, 127, 127, 127, 0, 127, green]],

        [1, [manual, spiral, 127, 127, 127, 127, 127, 127, red]],
        [1, [manual, spiral, 127, 127, 127, 127, 64, 127, red]],
        [1, [manual, spiral, 127, 127, 127, 127, 0, 127, red]],

        [1, [manual, spiral, 127, 127, 127, 127, 127, 127, blue]],
        [1, [manual, spiral, 127, 127, 127, 127, 64, 127, blue]],
        [1, [manual, spiral, 127, 127, 127, 127, 0, 127, blue]],

        [1, [manual, spiral, 127, 127, 127, 127, 127, 127, yellow]],
        [1, [manual, spiral, 127, 127, 127, 127, 64, 127, yellow]],
        [1, [manual, spiral, 127, 127, 127, 127, 0, 127, yellow]],

        //
        [0, [manual, random_dots, 135, 136, 137, 138, 139, 140, blue]],
        [1, [manual, dotted_line, 137, 135, 136, 139, 140, 138, green]],
        [2, [manual, dotted_semicircle, 137, 135, 136, 140, 138, 139, yellow]],
        [3, [manual, random_dots, 139, 135, 136, 140, 138, 137, cyan]],

        [0, [manual, circle, 155, 156, 137, 158, 159, 160, red]],
        [1, [manual, spike_circle, 157, 155, 156, 159, 160, 158, pink]],
        [2, [manual, dotted_semicircle, 155, 157, 156, 160, 158, 159, yellow]],
        [3, [manual, random_dots, 159, 155, 156, 160, 158, 157, cyan]],

        [0, undefined],
        [0, undefined],
        [0, undefined],
        [0, undefined],

        [0, [auto, circle, 155, 156, 137, 158, 159, 160, red]],
        [1, [auto, spike_circle, 157, 155, 156, 159, 160, 158, pink]],
        [2, [auto, dotted_semicircle, 155, 157, 156, 160, 158, 159, yellow]],
        [3, [auto, random_dots, 159, 155, 156, 160, 158, 157, cyan]],
    ];

    print('Maximum scene number is', lscenes.length - 1);
    print('Maximum key scene number is', keyScenes.length - 1);

    return {blackout: blackout_scene,
            scenes: lscenes,
            keyScenes: keyScenes};
};
