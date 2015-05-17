#pragma once

#include "swirly/max/findObjects.js"
#include "swirly/util/Error.js"
#include "swirly/util/FileReader.js"

function ShowRunner() {
    var self = this;
    this._methods = [
        // These methods can be overridden on the scene.
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

    // this._scene = new DefaultScene();
    this._objects = Max.findAll();
    this._dmxusbpro = this._objects.maxclass.dmxusbpro;
    this._timer = this._objects.maxclass.timer;
    this._dmx_cache = {};
    this._time = [0, 0, 0];

    this._dmxoutput = function(channel, value) {
        // Avoid sending the same value twice.
        if (value !== self._dmx_cache[channel]) {
            this_.dmxusbpro.message(channel, value);
            self._dmx_cache[channel] = value;
        }
    };

    this.transport = function() {
        self._time = arrayfromargs(arguments);
        if (self._nextCue != undefined && !self.time[1]) {
            self._scene = self._nextCue.apply(self);
            self._nextCue = undefined;
        }
    };

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
        if (self._time[1])
            self._nextCue = cue_function;
        else
            self._scene = cue.apply(self);
    };

    function delegateToScene(name) {
        return function(_) {
            if (self._scene) {
                var method = self._scene[name];
                if (method)
                    method.apply(self, arrayfromargs(arguments));
            }
        };
    };

    for (var i in this._methods) {
        var name = this._methods[i][0];
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
