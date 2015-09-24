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
4. send level in channel.js
*/

function ShowRunner() {
    var self = this;

    self.callbackTable = {};
    self.objects = Max.findAll();
    self.jsonReader = FileReader.jsonReader('/development/swirly/data');
    self.execute = {readFile: self.jsonReader};
    self.json = Show.showJson(self);

    self.inputs = Lights.makeInputs(self);

    // This code has to be done in the constructor so it's done as soon as
    // possible and has a chance to set the inlets.
    Max.setInlets(self.inputs);

    // setup() is called from a loadbang.
    self.setup = function() {
        self.live = Live.Environment();
        self.lights = Lights.makeBank(self);
        self.processors = Lights.makeProcessors(self);
        self.scenes = Scene.makeScenes(self);
        self.printInfo();
    };

    self.printInfo = function() {
        Lights.printInputs(self.inputs);
        Live.printEnvironment(self.live);
        Lights.printBank(self.lights);
        Lights.printProcessors(self.processors);
        Scene.printScenes(self.scenes);
    };
};
