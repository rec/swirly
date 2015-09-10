#pragma once

#include "swirly/instrument/Bank.js"
#include "swirly/instrument/Inputs.js"
#include "swirly/instrument/Processor.js"
#include "swirly/max/findObjects.js"
#include "swirly/max/NewInlets.js"
#include "swirly/show/ExpandJson.js"
#include "swirly/util/FileReader.js"
#include "swirly/util/ForEach.js"

function ShowRunner() {
    var self = this,
        objects = Max.findAll(),
        dmxusbpro = objects.maxclass.dmxusbpro;

    self.callbackTable = {};
    self.jsonReader = FileReader.jsonReader('/development/swirly/data');
    self.execute = {readFile: self.jsonReader);
    self.json = Show.expandJson(self.jsonReader('show'), self.execute);
    self.inputs = Instrument.makeInputs(self.json.inputs, self.callbackTable);
    self.lights = Instrument.makeBank(self.json.lights, dmxusbpro, objects);
    self.processors = Instrument.makeProcessors(self, self.json.processors);
    Max.setInlets(self.inputs);
};
