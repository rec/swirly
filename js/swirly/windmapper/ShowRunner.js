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

    this._objects = Max.findAll();
    this._dmxusbpro = this._objects.maxclass.dmxusbpro;
    this._timer = this._objects.maxclass.timer;
    var dmx_cache = {};
    this._time = [0, 0, 0];
    this._cues = {};
    this._cue_bar = 0;

    function _runCue() {
        if (!self._time[1] && self._nextCue !== undefined) {
            post('Cue', self._nextCue, '\n');
            self._cue_bar = self._time[0];
            var cue = self._cues[self._nextCue];
            if (cue)
                self._scene = cue.apply(self);
            else
                post('ERROR: no cue for note', self._nextCue, '\n');
            self._nextCue = undefined;
        }
    };


    this._dmxoutput = function(channel, value) {
        // Avoid sending the same value twice.
        if (channel <= 0 || channel > 255) {
            post('ERROR: channel', channel, '\n');
            return;
       }
        if (value !== dmx_cache[channel]) {
            this._dmxusbpro.message(parseInt(channel), parseInt(value));
            dmx_cache[channel] = value;
            post('dmx:', channel, value, Channels.head.x, '\n');
        }
    };

    this.transport = function() {
        self._time = arrayfromargs(arguments);
    };

    this.dmxusbpro = function(command, device) {
        if (command === 'append' && device != 'None')
            self._dmxusbpro.message(device);
    };

    this.cue = function(note, velocity) {
        if (!velocity)
            return;
        post('cue one:', note, '\n');
        self._nextCue = note;
        _runCue();
    };

    function delegateToScene(name) {
        return function(_) {
            if (self._scene) {
                var method = self._scene[name];
                if (method)
                    method.apply(self, arrayfromargs(arguments));
                if (!false && name == 'transport')
                    post('transport\n');
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
