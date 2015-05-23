#pragma once

#include "swirly/laser/Laser.js"
#include "swirly/windmapper/Channels.js"
#include "swirly/windmapper/DMXScene.js"
#include "swirly/windmapper/EnvelopeSequence.js"
#include "swirly/windmapper/Envelope.js"
#include "swirly/windmapper/Program.js"
#include "swirly/windmapper/ShowRunner.js"

function remap(map, assignments) {
    var result = {};
    for (var a in assignments)
        result[map[a]] = assignments[a];
    return result;
};

function union(_) {
    var result = {};
    for (var i in arguments)
        for (var j in arguments[i])
            result[j] = arguments[i][j];
    return result;
};

function laser_dict(pattern, color, assignments, _) {
    var newAssign = {};
    for (var i in Laser.channels)
        newAssign[i] = 0;

    for (var i in assignments)
        newAssign[i] = assignments[i];

    assignments = newAssign;

    assignments['mode'] = 255;
    var p = Laser.pattern[pattern];
    if (p !== undefined)
        assignments['pattern'] = p;
    else
        post('ERROR: Didn\'t understand pattern', pattern, '\n');

    var c = Laser.color[color];
    if (c !== undefined)
        assignments['color'] = c;
    else
        post('ERROR: Didn\'t understand color', color, '\n');

    var dicts = [];
    var args;
    if (arguments.length === 3)
        args = [0, 1, 2, 3];
    else
        args = arrayfromargs(arguments).slice(3);

    for (var i in args) {
        var arg = args[i];
        var laser = Channel.laser[arg];
        if (laser)
            dicts.push(remap(laser, assignments));
        else
            Postln('ERROR: Didn\'t understand laser', arg);
    }
    return union.apply(this, dicts);
};

// var ttest1 = laser_dict('circle', 'red', {vpos: 7}, 0, 1, 2);

var _moving = Channel.moving,
    _laser = Channel.laser;

var States = {
    atFace: remap(_moving, { x: 0, y: 88 }),
};

var _laser_states = {
    slow_lines: {pattern: 159, hpos: 129},
    slow_turning_cross: {pattern: 187, zrot: 129, horiz: 148, vert: 64},
    fast_turning_cross: {pattern: 187, zrot: 177}
};

var Scenes = {
    start: DMXScene(
        laser_dict('line', 'red', {hpos: 129}, 0),
        laser_dict('square', 'green', {hpos: 129}, 1),
        laser_dict('triangle', 'yellow', {hpos: 129}, 2),
        laser_dict('wave', 'cyan', {hpos: 129}, 3)),

    fadeIn: EnvelopeSequence(
        [[Channel.moving.x,
          new Envelope({data: [[0, 0], [0.5, 50], [3, 250]]} )]]),

    flash: Sequence(
        [0, 0],
        [1, {2: 100, 3: 100}],
        [2, 0],
        [3, {2: 100, 3: 100}],
        [4, 0]
    ),

    moving_mapper: NoteAndBreathMapper(Channel.moving),

    clear_mapper: function () { return {}; },
};

var _show_runner = new ShowRunner();

_show_runner.addSequence(
    ['start', Scenes.start]
#if 0
    ['victory', Loop(Scenes.fadeIn, 3, 2)],
    ['flash', Scenes.flash],
    ['program 1', Scenes.program1],
    ['program 2', Scenes.program2]
#endif
);

_show_runner.addMapper(
    ['standard', Scenes.moving_mapper],
    ['clear', Scenes.clear_mapper]
);
