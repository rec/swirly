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

function update(to, from) {
    for (var i in from)
        to[i] = from[i];
};

function union(_) {
    var result = {};
    for (var i in arguments)
        update(result, arguments[i]);
    return result;
};

var _emptyLasers = {};
for (var _i in Laser.channels)
    _emptyLasers[_i] = 0;


function ldict(pattern, color, assignments) {
    var result = {};
    update(result, _emptyLasers);
    update(result, assignments);

    result['mode'] = 255;

    var p = Laser.pattern[pattern];
    if (p !== undefined)
        result['pattern'] = p;
    else
        post('ERROR: Didn\'t understand pattern', pattern, '\n');

    var c = Laser.color[color];
    if (c !== undefined)
        result['color'] = c;
    else
        post('ERROR: Didn\'t understand color', color, '\n');
    return result;
};

function laserScene(_) {
    var state = {}
    for (var i = 0; i < 4; ++i) {
        var laser = arguments[i];
        var dict;
        if (!laser) {
            dict = {};
            update(dict, _emptyLasers);
            dict.mode = 0;
        } else {
            dict = ldict.apply(this, laser);
        }
        update(state, remap(Channel.laser[i], dict));
    }
    return DMXScene(state);
};

function laserAll(one) { return laserScene(one, one, one, one); }

// var ttest1 = laser_dict('circle', 'red', {vpos: 7}, 0, 1, 2);

var _moving = Channel.moving,
    _laser = Channel.laser;

var States = {
    atFace: remap(_moving, { x: 0, y: 88 }),
};

var _show_runner = new ShowRunner();

// TODO: what's wrong with the old blackout?
_show_runner.addSequence(
    ['blackout', laserScene()],

    ['blue line', laserAll(['line', 'blue'])],
    ['red line', laserAll(['line', 'red'])],
    ['cyan line', laserAll(['line', 'cyan'])]

);

_show_runner.addMapper(
    ['standard', NoteAndBreathMapper()],
    ['white', NoteAndBreathMapper({white: 1.0})]
);
