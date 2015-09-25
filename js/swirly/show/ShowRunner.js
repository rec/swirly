#pragma once

#include "swirly/lights/Bank.js"
#include "swirly/lights/Processor.js"
#include "swirly/live/Environment.js"
#include "swirly/max/NewInlets.js"
#include "swirly/max/findObjects.js"
#include "swirly/show/ExpandJson.js"
#include "swirly/show/Inputs.js"
#include "swirly/show/Scene.js"
#include "swirly/util/FileReader.js"

/**
   A FunctionList is either a pure function or an array of FunctionLists.

   A Show Op is a function that takes a show and a description and returns
   a FunctionList.
*/

/**

TODO:
1. print out all values.
3. sequencing changes into the state.
4. set "send level" in channel.js
*/

function ShowRunner() {
    var self = this,
        showName = jsarguments[1] || 'show',
        jsonReader = FileReader.jsonReader('/development/swirly/data'),
        execute = {readFile: jsonReader};

    self.inputHandlers = {};
    self.objects = Max.findAll();

    function readJson() {
        self.json = Show.expandJson(jsonReader(showName), execute);
    };

    readJson();
    self.inputs = Inputs.make(self);

    // This code has to be done in the constructor so it's done as soon as
    // possible and has a chance to set the inlets.
    Max.setInlets(self.inputs);

    // setup() is called from a bang or loadbang.
    self.setup = function() {
        readJson();

        self.live = Live.Environment();
        self.lights = Lights.make(self);
        self.processors = Processor.make(self);
        self.scenes = Scene.make(self);
        self.printInfo();
    };

    self.printInfo = function() {
        Inputs.print(self.inputs);
        Live.print(self.live);
        Lights.print(self.lights);
        Processor.print(self.processors);
        Scene.print(self.scenes);
    };
};
