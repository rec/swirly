#pragma once

#include "swirly/instrument/Bank.js"
#include "swirly/instrument/Inputs.js"
#include "swirly/instrument/Processor.js"
#include "swirly/live/Environment.js"
#include "swirly/max/findObjects.js"
#include "swirly/max/NewInlets.js"
#include "swirly/scene/SceneMaker.js"
#include "swirly/show/ExpandJson.js"
#include "swirly/util/FileReader.js"

function ShowRunner() {
    var self = this;

    self.callbackTable = {};
    self.objects = Max.findAll();
    self.jsonReader = FileReader.jsonReader('/development/swirly/data');
    self.execute = {readFile: self.jsonReader};

    self.json = Show.showJson(self);
    self.inputs = Instrument.makeInputs(self);
    Max.setInlets(self.inputs);

    function doPost(name) {
        post('.\n.\n');
        post(name + '\n')
        post('.\n.\n');
        maxLog(self[name]);
    };

    self.postInfo = function() {
        Instrument.postInputs(self.inputs);
        Instrument.postBank(self.lights);
        doPost('lights');
        doPost('processors');
        doPost('scenes');
    };

    self.setup = function() {
        self.live = Live.Environment();
        self.lights = Instrument.makeBank(self);
        self.processors = Instrument.makeProcessors(self);
        self.scenes = Scene.makeScenes(self);
        self.postInfo();
    };
};
