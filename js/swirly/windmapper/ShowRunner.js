#pragma once

#include "swirly/max/findObjects.js"
#include "swirly/util/Error.js"
#include "swirly/util/FileReader.js"

function ShowRunner() {
    var self = this;
    this._methods = [
        // These methods can be overridden on the "wind" object.
        ['note', 'MIDI note on and off'],
        ['breath', 'breath control'],
        ['program', 'program change'],
        ['pitchbend', 'pitchbend'],

        ['level', 'audio level'], // This is disabled.

        // These methods can be overriden on the "sequence" object.
        ['phasor', 'The phasor value between 0 and 1'],
        ['transport', 'A list representing the transport number.'],
        ['timer', 'Result of some incoming time'],

        // These ones are hard-coded.
        ['sequence', 'Cues for the sequencer.'],
        ['mapper', 'Cues for the mapper.'],
        ['dmxusbpro', 'Menu output from the dmx USB pro'],

        // Debugging only.
        ['envelope', 'test for envelope'],
    ];

    this._cueBar = 0;

    var objects = Max.findAll(),
        dmxusbpro = objects.maxclass.dmxusbpro,
        dmx_cache = {},
        cuesToRun = [],
        mapper = {},
        sequence = {},
        scene = {'mapper': {}, 'sequence' : {}},
        cues = {'mapper': [], 'sequence': []};

    function canRun() {
        return !self._time || self._time[1] == 1;
    }

    function _runCue() {
        if (cuesToRun.length && ) {
            cuesToRun.forEach(function(cue) {
                // self._cueBar = self._time[0]; TODO???
                var cueType = cue[0], name = cue[1], sceneMaker = cue[2];
                post('Cue runs:', cueType + '.' + name, '\n');
                scene[cueType] = sceneMaker.apply(self);
            });
        }
    };

    this._dmxoutput = function(channel, value) {
        if (channel <= 0 || channel > 255) {
            post('ERROR: channel', channel, '\n');
            return;
        }
        // Avoid sending the same value twice.
        if (value !== dmx_cache[channel]) {
            dmxusbpro.message(parseInt(channel), parseInt(value));
            dmx_cache[channel] = value;
        }
    };

    this.transport = function() {
        self._time = arrayfromargs(arguments);
        _runCue();
    };

    this.dmxusbpro = function(command, device) {
        if (command === 'append' && device != 'None')
            self._dmxusbpro.message(device);
    };

    function doCue(cueType, note) {
        var cue = cues[cueType][note];
        if (cue)
            scene[cueType] = cue(self);
        else
            post('ERROR: didn\'t understand cue', cueType, note, '\n');
    };

    this.sequence = function(note) {
        doCue('sequence', note);
    };

    this.mapper = function(note) {
        doCue('mapper', note);
    };



    this.cue = function(note, velocity) {
        if (velocity) {
            post('cue waits:', note, '\n');
            self._nextCue = note;
            _runCue();
        }
    };

    function delegate(cueType, method) {
        var cues = self[cueType + '_cues']
        self[method] = function(cueIndex) {
            var cue = cues[cueIndex];
            if (cue) {
                var name = cue[0], sceneMaker = cue[1];
                post('Run cue', cueType + '.' + name);
                self[cueType] = sceneMaker.apply(self, arguments);
            } else {
                post('ERROR: Unknown cue', methodIndex, '\n');
            }
        };
    }

    delegate('mapper', 'note');
    delegate('mapper', 'breath');
    delegate('mapper', 'program');
    delegate('mapper', 'pitchbend');

    delegate('sequence', 'phasor');
    delegate('sequence', 'transport');
    delegate('sequence', 'timer');

    this.addCue = function(cueType, name, sceneMaker) {
        var cues = self[cueType + '_cues']
        var methodIndex = cues.length.toString();
        name = name || methodIndex;
        cues.push([name, sceneMaker]);
        post('New cue', cueType + '.' + name, '(' + methodIndex + ')\n');
    };
};
