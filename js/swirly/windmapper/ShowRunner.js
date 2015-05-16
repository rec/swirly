#pragma once

#include "swirly/max/findObjects.js"
#include "swirly/util/Error.js"
#include "swirly/util/FileReader.js"

function DefaultScene() {
    this.note = function() {};
    this.breath = function() {};
    this.program = function() {};
    this.pitchbend = function() {};
    this.level = function() {};
    this.phasor = function() {};
    this.transport = function() {};
    this.timer = function() {};
    this.start = function() {};
};

function ShowRunner() {
    var self = this;
    this._methods = [
        // These methods need to be overridden.
        ['note', 'MIDI note on and off'],
        ['breath', 'breath control'],
        ['program', 'program change'],
        ['pitchbend', 'pitchbend'],
        ['level', 'audio level'],
        ['phasor', 'The phasor value between 0 and 1'],
        ['transport', 'A list representing the transport number.'],
        ['timer', 'Result of some incoming time'],

        // These ones are hard-coded.
        ['cue', 'Incoming cues from the sequencer.'],
        ['dmxusbpro', 'Menu output from the dmx USB pro'],
    ];

    self = self;

    this._scene = new DefaultScene();
    this._objects = Max.findAll();
    this._dmxusbpro = this._objects.maxclass.dmxusbpro;
    this._timer = this._objects.maxclass.timer;

    this.dmxusbpro = function(command, device) {
        if (command === 'append' && device != 'None')
            self._dmxusbpro.message(device);
    };

    this.cue = function(note, velocity) {
        if (!velocity)
            return;
        var cue = self._cues[note];
        if (!cue) {
            post('ERROR: no cue for note', note, '\n');
            return;
        }
        self._scene = cue.apply(self);
        self._scene.start();
    };

    function delegateToScene(name) {
        return function(_) {
            var method = self._scene[name];
            if (method)
                method.apply(self, arrayfromargs(arguments));
            else
                ERROR('no proxy method for name ', name);
        };
    };

    for (var name in this._help) {
        if (!(name in this))
            this[name] = delegateToScene(name);
    }

#if 0
    this.load = function(filename) {
        var data = FileReader.ReadJson(filename);
        if (!data)
            return ERROR('No file', filename);

        if (!data.type)
            return ERROR('No type in', filename);

        var scene = ShowRunner.SCENE_TYPES[data.type];
        if (!scene)
            return ERROR('Unknown type', data.type + ' in ' + filename);
        self._scene = scene.apply(self);
    };

    // ShowRunner.SCENE_TYPES = {};
    //        ['load', 'Load a scene from a disk file.'],
#endif
};
