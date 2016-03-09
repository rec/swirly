#pragma once

#include "swirly/show/Show.js"
#include "swirly/max/findObjects.js"
#include "swirly/util/print.js"
#include "swirly/show/ExpandJson.js"
#include "swirly/util/FileReader.js"


Show.FireRunner = function() {
    var objects = Max.findAll(),
        byName = objects.byName,
        byClass = objects.byClass,
        dmxusbpro = byClass.dmxusbpro,
        jsonReader = FileReader.jsonReader('/development/swirly/data'),
        execute = {readFile: jsonReader},
        lights_raw = jsonReader('lights/lights.json'),
         lights_data = Show.expandJson(lights_raw, execute),

        lasers = [byName.lasers_1,
                  byName.lasers_2,
                  byName.lasers_3,
                  byName.lasers_4],
        moving = byName.moving_head,
        headlight = byName.headlight,

        bank_pc = byName.bank_pc,
        mapper = byName.mapper,
        sequence = byName.sequence,
        error = byName.error,
        faders = {};
    Postln(lights_data);

    function note(k, v) {
        Postln('note', k, v);
    }

    function breath(b) {
        Postln('breath', b);
    }

    function sequence(b) {
        Postln('sequence', b);
    }

    function mapper(b) {
        Postln('mapper', b);
    }

    function test(b) {
        Postln('test', b);
    }

    function dmx(b) {
        Postln('dmx', b);
    }

    function fader(c, v) {
        Postln('fader', c, v);
        faders[c] = v;
    }

    return {
        note: note,
        breath: breath,
        sequence: sequence,
        mapper: mapper,
        dmx: dmx,
        test: test,
        fader: fader,

        names: ['note', 'breath', 'dmx', 'sequence', 'mapper', 'test', 'fader']
    };
};
