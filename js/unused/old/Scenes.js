#pragma once

#include "swirly/laser/Laser.js"
#include "swirly/util/Dicti.js"
#include "swirly/show/Channels.js"
#include "swirly/show/DMXScene.js"
#include "swirly/show/EnvelopeSequence.js"
#include "swirly/show/Envelope.js"
#include "swirly/show/Program.js"
#include "swirly/show/OldShowRunner.js"

var _emptyLasers = {};
for (var _i in Laser.channels)
    _emptyLasers[_i] = 0;


// TODO: get rid of this specific, random logic in favor of simpler parts.
function ldict(pattern, color, assignments) {
    var result = {};
    Util.dict.update(result, _emptyLasers);
    Util.dict.update(result, assignments);

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

// TODO: more random logic.
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
        update(state, Dicti.remap(Channel.laser[i], dict));
    }
    return DMXScene(state);
};

// TODO: more random logic.
function laserAll(one) { return laserScene(one, one, one, one); }

var _moving = Channel.moving,
    _laser = Channel.laser;

var _show_runner = new ShowRunner();

// TODO: what's wrong with the old blackout?
// TODO: all of this gets ported to being data!

_show_runner.addSequence(
    ['blackout', laserScene()],

    ['svengali 1', laserScene(['line', 'blue'])],
    ['svengali 2', laserScene(0, ['line', 'blue'])  ],
    ['svengali 3', laserScene(0, 0, ['line', 'blue'])],
    ['svengali 4', laserScene(0, 0, 0, ['line', 'blue'])],
    ['svengali 5', laserAll(['line', 'cyan'])],

    ['svengali red 1', laserScene(['line', 'red'])],
    ['svengali red 2', laserScene(0, ['line', 'red'])  ],
    ['svengali red 3', laserScene(0, 0, ['line', 'red'])],
    ['svengali red 4', laserScene(0, 0, 0, ['line', 'red'])],
    ['svengali red 5', laserAll(['line', 'pink'])],

    ['time 1', laserAll(['star', 'yellow', {zrot: 200}])],
    ['time 2', laserAll(['star', 'blue', {zrot: 200}])],
    ['time 3', laserAll(['star', 'green', {zrot: 200}])],
    ['time 4', laserAll(['star', 'red', {zrot: 200}])],

    ['time 1', laserAll(['square', 'yellow', {zrot: 200}])],
    ['time 2', laserAll(['square', 'blue', {zrot: 200}])],
    ['time 3', laserAll(['square', 'green', {zrot: 200}])],
    ['time 4', laserAll(['square', 'red', {zrot: 200}])],

    ['time 1', laserAll(['spiral', 'yellow', {zrot: 175, xpos: 225}])],
    ['time 2', laserAll(['spiral', 'blue', {zrot: 175, xpos: 225}])],
    ['time 3', laserAll(['maltese_cross', 'green', {zrot: 175, xpos: 225}])],
    ['time 4', laserAll(['maltese_cross', 'red', {zrot: 200, xpos: 225}])],


    ['spacey',
     laserScene(
         ['spiral', 'blue', {xrot:140, yrot: 180, zrot: 130, xpos: 135, ypos: 137}]
     )],

    ['spacey 2',
     laserScene(
         ['spiral', 'blue', {xrot:140, yrot: 180, zrot: 130, xpos: 135, ypos: 137}],
         ['hourglass', 'green', {xrot:130, yrot: 170, zrot: 132, xpos: 138, ypos: 136}]
     )],

    ['spacey 2',
     laserScene(
         ['spiral', 'blue', {xrot:140, yrot: 180, zrot: 130, xpos: 135, ypos: 137}],
         ['hourglass', 'green', {xrot:130, yrot: 170, zrot: 132, xpos: 138, ypos: 136}],
         ['parallel_lines', 'red', {xrot:133, yrot: 174, zrot: 136, xpos: 132, ypos: 131}]
     )],

    ['spacey 2',
     laserScene(
         ['spiral', 'blue', {xrot:140, yrot: 180, zrot: 130, xpos: 135, ypos: 137}],
         ['hourglass', 'green', {xrot:130, yrot: 170, zrot: 132, xpos: 138, ypos: 136}],
         ['parallel_lines', 'red', {xrot:133, yrot: 174, zrot: 136, xpos: 132, ypos: 131}],
         ['logarithmic', 'pink', {xrot:135, yrot: 175, zrot: 132, xpos: 131, ypos: 138}]
     )],

    ['spirit',
     laserScene(
         ['dotted_line', 'all', {xrot:140, yrot: 180, zrot: 130, xpos: 135, ypos: 137}],
         ['dotted_semicircle', 'all', {xrot:130, yrot: 170, zrot: 132, xpos: 138, ypos: 136}],
         ['random_dots', 'all', {xrot:133, yrot: 174, zrot: 136, xpos: 132, ypos: 131}],
         ['random_dots', 'all', {xrot:135, yrot: 175, zrot: 132, xpos: 131, ypos: 138}]
     )],

    ['spirit 2',
     laserScene(
         ['dotted_line', 'all', {xrot:129, yrot: 129, zrot: 129, xpos: 129, ypos: 129}],
         ['dotted_semicircle', 'all', {xrot: 129, yrot: 129, zrot: 129, xpos: 129, ypos: 129}],
         ['random_dots', 'all', {xrot: 129, yrot: 129, zrot: 129, xpos: 129, ypos: 129}],
         ['random_dots', 'all', {xrot: 129, yrot: 129, zrot: 129, xpos: 129, ypos: 129}]
     )]

);

// TODO: yes, this will be data too.
_show_runner.addMapper(
    ['standard', NoteAndBreathMapper()],
#if 0
    ['white', NoteAndBreathMapper({white: 1.0})],
    ['x', NoteAndBreathMapper({x: 0.3})],
    ['y', NoteAndBreathMapper({y: 0.3})],
#endif
    ['effect', NoteAndBreathMapper({effect: 0.8})],
    ['effect_pos', NoteAndBreathMapper({effect_pos: 1.0})]
);
