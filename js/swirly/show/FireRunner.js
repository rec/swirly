#pragma once

#include "swirly/show/Show.js"
#include "swirly/lights/Bank.js"
#include "swirly/lights/Definition.js"
#include "swirly/max/findObjects.js"
#include "swirly/show/ExpandJson.js"
#include "swirly/util/FileReader.js"
#include "swirly/util/print.js"
#include "swirly/util/truncate_writer.js"
#include "swirly/util/Range.js"

Show.FireRunner = function() {
    var objects = Max.findAll(),
        byName = objects.byName,
        byClass = objects.byClass,
        dmxusbpro = byClass.dmxusbpro,
        jsonReader = FileReader.jsonReader('/development/swirly/data'),
        execute = {readFile: jsonReader},
        lights_raw = jsonReader('lights/lights.json'),

        lasers = [byName.lasers_1,
                  byName.lasers_2,
                  byName.lasers_3,
                  byName.lasers_4],
        moving = byName.moving_head,
        headlight = byName.headlight,

        bank_pc = byName.bank_pc,
        error = byName.error,
        processor,
        gantom = {
            channel: {
                red: 0,
                green: 1,
                blue: 2,
                color_macro: 3,
                speed: 4,
                'function': 5,
                dimmer: 6,
            },
            names: {
               strobe: 0,
               fade_in: 32,
               fade_out: 72,
               pulsing: 112,
               fade: 152,
               rgb_change: 192,
               six_color_change: 232,
               flicker: 251
            },
        };

    var macroRange = new Range(32, 255);
    var breathToDMX = Range.converter(Range.MIDI, Range.DMX),
        noteToDMX = Range.converter(Range.WX7, Range.DMX),
        breathToMacro = Range.converter(Range.MIDI, macroRange),
        noteToMacro = Range.converter(Range.WX7, macroRange);

    function breathToDimmer(b) {
        dmxusbpro.message(1 + gantom.channel.dimmer, 255 - 2 * b);
    }

    function breathToColor(b) {
        dmxusbpro.message(1 + gantom.channel.color_macro,
                          Math.floor(b / 127.0 * (255 - 32) + 32));
    }

    function noteToColor(n) {
        var d = (n - 33.0) / (103.0 - 33.0);
        var c = Math.floor(d * (255 - 32) + 32);
        dmxusbpro.message(1 + gantom.channel.color_macro, c);
    }

    function noteToSpeed(n) {
        var d = (n - 33.0) / (103.0 - 33.0);
        dmxusbpro.message(1 + gantom.channel.speed, Math.floor(255.0 * d));
    }

    function none() {}

    var mappers = [
        [none, none],
        [none, breathToDimmer],
        [noteToColor, breathToDimmer],
        [none, breathToColor],
        [noteToSpeed, breathToDimmer],
    ];

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

    var strobe = 0,
        fade_in = 32,
        fade_out = 72,
        pulsing = 112,
        fade = 152,
        rgb_change = 192,
        six_color_change = 232,
        flicker = 251;

    var gantomScenes = {
        blackout: [],
        opening: [0, 0, 0, 200, 64, flicker, 100],
        slow_rgb_fade: [0, 0, 0, 0, 0, fade, 0],
    };

    var laserScenes = {
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

        auto: [auto, circle, 64, 64, 64, 64, 64, 64, blue],
    };

    var scenes = [
        [gantomScenes.opening],
        [gantomScenes.slow_rgb_fade],
    ];

    function sendOneScene(scene, offset, count) {
        for (var i = 0; i < count; ++i)
            dmxusbpro.message(offset + i, scene[i] || 0);
    }

    function sendFullScene(scene) {
        if (scene[0])
            sendOneScene(scene[0], 1, 7);
        sendOneScene(scene[1] || laserScenes.blackout, 33, 9);
        sendOneScene(scene[2] || laserScenes.blackout, 49, 9);
        sendOneScene(scene[3] || laserScenes.blackout, 65, 9);
        sendOneScene(scene[4] || laserScenes.blackout, 81, 9);
    }

    function note(k, v) {
        // Postln('note', k, v);
        processor[0](k, v);
    }

    function breath(b) {
        // Postln('breath', b);
        processor[1](b);
    }

    function sequence(b) {
        // Postln('sequence', b);
        sendFullScene(scenes[b]);
    }

    function mapper(b) {
        // Postln('mapper', b);
        processor = mappers[b];
    }

    function test(b) {
        Postln('test', b);
    }

    function dmx(name, value) {
        Postln('dmx', name, value);
        if (value && name === 'append')
            dmxusbpro.message(value);
    }

    function smoke(value) {
        Postln('smoke', value);
        dmxusbpro.message(8, value);
    }

    processor = mappers[0];
    return {
        note: note,
        breath: breath,
        sequence: sequence,
        mapper: mapper,
        dmx: dmx,
        smoke: smoke,
        test: test,

        names: ['note', 'breath', 'dmx', 'sequence', 'mapper', 'test', 'smoke']
    };
};
