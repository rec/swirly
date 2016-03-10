#pragma once

#include "swirly/show/Show.js"
#include "swirly/lights/Bank.js"
#include "swirly/lights/Definition.js"
#include "swirly/max/findObjects.js"
#include "swirly/show/ExpandJson.js"
#include "swirly/util/FileReader.js"
#include "swirly/util/print.js"
#include "swirly/util/truncate_writer.js"

Show.FireRunner = function() {
    var objects = Max.findAll(),
        byName = objects.byName,
        byClass = objects.byClass,
        dmxusbpro = byClass.dmxusbpro,
        jsonReader = FileReader.jsonReader('/development/swirly/data'),
        execute = {readFile: jsonReader},
        lights_raw = jsonReader('lights/lights.json'),
        lights_data = Show.expandJson(lights_raw, execute),
        // lights_definition = Lights.make(undefined, lights_data),

        lasers = [byName.lasers_1,
                  byName.lasers_2,
                  byName.lasers_3,
                  byName.lasers_4],
        moving = byName.moving_head,
        headlight = byName.headlight,

        bank_pc = byName.bank_pc,
        mapper = byName.mapper,
        sequence = byName.sequence,
        error = byName.error;

    Util.TruncateWriter(function(f) {
        f.writestring(Print(lights_data));
    }, '/tmp/lights_json.txt');

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

    function dmx(name, value) {
        Postln('dmx', name, value);
        if (value && name === 'append')
            dmxusbpro.message(value);
    }

    return {
        note: note,
        breath: breath,
        sequence: sequence,
        mapper: mapper,
        dmx: dmx,
        test: test,

        names: ['note', 'breath', 'dmx', 'sequence', 'mapper', 'test']
    };
};
