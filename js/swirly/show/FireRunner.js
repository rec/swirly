#pragma once

#include "swirly/show/Show.js"
#include "swirly/show/LaserScenes.js"
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

    var mappers = {
        simple_breath: [none, breathToDimmer],
        full_breath: [noteToColor, breathToDimmer],
        breath_to_color: [none, breathToColor],
        note_to_speed: [noteToSpeed, breathToDimmer],
    };

    var gscenes = [
        [gantomScenes.opening, mappers.simple_breath],
        [gantomScenes.opening, mappers.full_breath],
        [gantomScenes.opening, mappers.breath_to_color],
        [gantomScenes.slow_rgb_fade, mappers.note_to_speed],
    ];

    var laser = Show.laserScenes(),
        lscenes = laser.scenes,
        laserBlackout = laser.blackout;

    function sendOneScene(scene, offset, count) {
        for (var i = 0; i < count; ++i)
            dmxusbpro.message(offset + i, scene[i] || 0);
    }

    function sendFullScene(scene) {
        sendOneScene(scene[0] || laserBlackout, 17, 9);
        sendOneScene(scene[1] || laserBlackout, 33, 9);
        sendOneScene(scene[2] || laserBlackout, 49, 9);
        sendOneScene(scene[3] || laserBlackout, 65, 9);
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
        Postln('sequence', b);
        if (b == 127) {
            sendFullScene([laserScenes.auto,
                           laserScenes.auto,
                           laserScenes.auto,
                           laserScenes.auto]);
            return;
        }
        var scene = lscenes[b];

        if (scene)
            sendFullScene(scene);
        else
            Postln("Didn't understand scene", b);
    }

    function mapper(b) {
        Postln('mapper', b);
        var scene = gscenes[b];
        if (!scene) {
            Postln('No scene for ', b);
        } else {
            sendOneScene(scene[0], 1, 7);
            processor = scene[1];
        }
    }

    mapper(0);

    function keylight(b) {
    }

    function dmx(name, value) {
        Postln('dmx', name, value);
        if (value && name === 'append')
            dmxusbpro.message(value);
    }

    function smoke(value) {
        Postln('disabled smoke', value);
    }

    return {
        note: note,
        breath: breath,
        sequence: sequence,
        mapper: mapper,
        dmx: dmx,
        smoke: smoke,
        keylight: keylight,

        names: ['note', 'breath', 'dmx', 'sequence', 'mapper', 'test', 'keylight']
    };
};
