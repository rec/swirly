#pragma once

#include "swirly/lights/Bank.js"
#include "swirly/lights/Inputs.js"
#include "swirly/lights/Processor.js"
#include "swirly/live/Environment.js"
#include "swirly/max/NewInlets.js"
#include "swirly/max/findObjects.js"
#include "swirly/scene/SceneMaker.js"
#include "swirly/show/ExpandJson.js"
#include "swirly/util/FileReader.js"

/**
   A FunctionList is either a pure function or an array of FunctionLists.

   A Show Operator is a function that takes a show and a description and returns
   a FunctionList.
*/

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

    // setup() is called from a loadbang.
    self.setup = function() {
        self.live = Live.Environment();
        self.lights = Instrument.makeBank(self);
        self.processors = Instrument.makeProcessors(self);
        self.scenes = Scene.makeScenes(self);
        self.printInfo();
    };

    self.printInfo = function() {
        Instrument.printInputs(self.inputs);
        Live.printEnvironment(self.live);
        Instrument.printBank(self.lights);
        Instrument.printProcessors(self.processors);
        Scene.printScenes(self.scenes);
    };
};
