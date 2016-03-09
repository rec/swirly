#pragma once

#include "swirly/show/Show.js"
#include "swirly/util/print.js"

Show.FireRunner = function() {
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
