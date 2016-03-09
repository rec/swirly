#pragma once

#include "swirly/show/Show.js"
#include "swirly/max/findObjects.js"
#include "swirly/util/print.js"

Show.FireRunner = function() {
    var objects = Max.findAll(),
        byName = objects.byName,
        byClass = objects.byClass,
        dmxusbpro = byClass.dmxusbpro,
        lasers = [byName.lasers_1,
                  byName.lasers_2,
                  byName.lasers_3,
                  byName.lasers_4],
        moving = byName.moving_head,
        headlight = byName.headlight,
        unpack = byName.bank_pc,
        mapper = byName.mapper,
        sequence = byName.sequence,
        error = byName.error;

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
        Postln('here!!');
        unpack.message(23, 42);
        Postln('done!!');
        if (true) return;
        for (var i in unpack)
            Postln(i, unpack[i]);
    }

    return {
        note: note,
        breath: breath,
        sequence: sequence,
        mapper: mapper,
        dmx: dmx,
        test: test,

        names: ['note', 'breath', 'dmx', 'sequence', 'mapper', 'test'],
    };
};
