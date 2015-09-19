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

/**

TODO:
1. print out all values.
2. display of current state.
3. sequencing changes into the state.
*/

function ShowRunner() {
    var self = this;

    self.callbackTable = {};
    self.objects = Max.findAll();
    self.jsonReader = FileReader.jsonReader('/development/swirly/data');
    self.execute = {readFile: self.jsonReader};
    self.json = Show.showJson(self);

    self.inputs = Instrument.makeInputs(self);

    // This code has to be done in the constructor so it's done as soon as
    // possible and has a chance to set the inlets.
    Max.setInlets(self.inputs);

    // setup is called from a loadbang.
    self.setup = function() {
        self.live = Live.Environment();
        self.lights = Instrument.makeBank(self);
        self.processors = Instrument.makeProcessors(self);
        self.scenes = Scene.makeScenes(self);
        self.postInfo();
    };

    self.postInfo = function() {
        Instrument.postInputs(self.inputs);
        Live.postEnvironment(self.live);
        Instrument.postBank(self.lights);
        Instrument.postProcessors(self.processors);
        Scene.postScenes(self.scenes);
    };
};
