#pragma once

#include "swirly/max/findObjects.js"
#include "swirly/util/Error.js"
#include "swirly/util/FileReader.js"

function DefaultScene() {
    this.transport = function() {};
    this.note = function() {};
    this.breath = function() {};
    this.program = function() {};
    this.pitchbend = function() {};
    this.level = function() {};
    this.phasor = function() {};
    this.timer = function() {};
};

function ShowRunner() {
    this._methods = [
        ['transport', 'A list representing the transport number.'],
        ['note', 'MIDI note on and off'],
        ['breath', 'breath control'],
        ['program', 'program change'],
        ['pitchbend', 'pitchbend'],
        ['level', 'audio level'],
        ['phasor', 'The phasor value between 0 and 1'],
        ['timer', 'Result of some incoming time'],
        ['dmxusbpro', 'Menu output from the dmx USB pro'],
        ['load', 'Load a scene from a disk file.'],
    ];

    this._scene = new DefaultScene();
    this._objects = Max.findAll();
    this._dmxusbpro = this._objects.maxclass.dmxusbpro;
    this._timer = this._objects.maxclass.timer;
    // this._

    var self = this;

    this.load = function(filename) {
        var data = FileReader.ReadJson(filename);
        if (!data)
            return ERROR('No file', filename);

        if (!data.type)
            return ERROR('No type in', filename);

        var scene = ShowRunner.SCENE_TYPES[data.type];
        if (!scene)
            return ERROR('Unknown type', data.type + ' in ' + filename);
        this._scene = scene();
    };

    this.dmxusbpro = function(command, device) {
        if (command === 'append' && device != 'None')
            self._dmxusbpro.message(device);
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
};

ShowRunner.SCENE_TYPES = {};
