#pragma once

#include "swirly/instrument/Bank.js"
#include "swirly/instrument/Input.js"
#include "swirly/instrument/Processor.js"
#include "swirly/max/findObjects.js"
#include "swirly/util/ForEach.js"

function ShowRunner() {
    var self = this,
        objects = Max.findAll(),
        dmxusbpro = objects.maxclass.dmxusbpro;

    self.json = readJson('show');
    self.inputs = Instrument.makeInputs(self.json.inputs);
    self.lights = Instrument.makeBank(self.json.lights, dmxusbpro, objects);
    self.processors = Instrument.makeProcessors(self, self.json.processors);

    forEach(inputs.methods, function(value, key) {
        self[key] = value;
    });
};
