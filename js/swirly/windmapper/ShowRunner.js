#pragma once

#include "swirly/max/findObjects.js"
#include "swirly/util/Error.js"
#include "swirly/util/FileReader.js"
#include "swirly/util/print.js"

function ShowRunner() {
    var self = this;

    this._methods = [
        // These methods can be overridden on the "mapper" object.
        ['note', 'MIDI note on and off'],
        ['breath', 'breath control'],
        ['program', 'program change'],
        ['pitchbend', 'pitchbend'],

        // These ones are hard-coded.
        ['phasor', 'The phasor value between 0 and 1'],
        ['transport', 'A list representing the transport number.'],
        ['sequence', 'Cues for the sequencer.'],
        ['mapper', 'Cues for the mapper.'],
        ['dmxusbpro', 'Menu output from the dmx USB pro.'],
        ['testing', 'Turn on and off individual instruments.'],

        // Debugging only.
        // ['envelope', 'test for envelope'],
        // ['level', 'audio level'], // This is disabled.
        // ['timer', 'Result of some incoming time'],  // This is disabled.

    ];

    var objects = Max.findAll(),
        dmxusbpro = objects.maxclass.dmxusbpro,
        dmxCache,
        cuesToRun,
        scene,
        cues = {'mapper': [], 'sequence': []},
        multisliders = [
            objects.varname.laser_1,
            objects.varname.laser_2,
            objects.varname.laser_3,
            objects.varname.laser_4,
            objects.varname.moving_head],
        bankSizes = [9, 9, 9, 9, 14],
        bankSize = 16,
        bankCount = 5,
        channelCount = bankCount * bankSize;

    this.objects = objects;

    function canRun() {
        return self._time && self._time[1] == 1;
    }

    function runCues() {
        if (cuesToRun.length && canRun()) {
            cuesToRun.forEach(function(c) { c(); } );
            cuesToRun = [];
        }
    };

    function setDmx(channel, bank, entry, value) {
        dmxCache[channel] = value;
        dmxusbpro.message(channel, value);
        multisliders[bank].message('set', [entry, value]);
        post('!', channel, bank, entry, value, '\n');
        // objects.maxclass.number.message('set', value);
    };

    this._clearDMX = function() {
        dmxCache = new Array(channelCount + 1); // We never use channel 0.
        dmxCache = [];
        for (var bank = 0; bank < bankCount; ++bank) {
            var base = bank * bankSize + 1;
            for (var entry = 0; entry < bankSizes[bank]; ++entry)
                setDmx(base + entry, bank, entry + 1, 0);
        }
    };

    function clear() {
        cuesToRun = [];
        scene = {'mapper': {},
                 'sequence': function(time) {}};
        self._clearDMX();
    }

    clear();

    this._dmxratio = function(channel, value) {
        self._dmxoutput(channel, Ranges.dmx.select(value));
    };

    this._dmxoutput = function(channel, value) {
        // Avoid sending the same value twice.
        if (value === dmxCache[channel])
            return;

        var bank = Math.floor(channel / bankSize),
            entry = channel - bankSize * bank;

#ifndef OPTIMIZE_AWAY
        if (channel <= 0 || channel > channelCount) {
            post('ERROR: channel', channel, '\n');
            return;
        }

        if (value < 0 || value > 255) {
            post('ERROR: value', value, '\n');
            return;
        }

        var size = bankSizes[bank];
        if (entry > size) {
            post('ERROR: entry', entry, 'is greater than bank size', size,
                 'for bank', bank, channel, '\n');
            return;
        }
#endif

        setDmx(channel, bank, entry, value);
    };

    this.transport = function() {
        self._time = arrayfromargs(arguments);
        runCues();
        // scene.sequence.transport && scene.sequence.transport();
    };

    this.dmxusbpro = function(command, device) {
        if (command === 'append' && device != 'None')
            dmxusbpro.message(device);
    };


    this.sequence = function(note) {
        var cue = cues.sequence[note];
        if (!cue) {
            post('ERROR: didn\'t understand sequence', note, '\n');
            return;
        }

        function run() {
            var name = cue[0], runner = cue[1];
            var cueBar = self._time[0], context = {};

            name = name.split(' ');
            objects.varname.sequence.message('set', name);
            // post('Sequence:', name, cueBar, '\n');
            scene.sequence = function(time) {
                runner(self, time + self._time[0] - cueBar, context);
            };
        };
        if (canRun())
            run();
        else
            cuesToRun.push(run);
    };

    this.mapper = function(note) {
        var cue = cues.mapper[note];
        if (!cue) {
            post('ERROR: didn\'t understand mapper', note, '\n');
            return;
        }

        var name = cue[0], runner = cue[1];
        // post('Mapper:', name, '\n');
        objects.varname.mapper.message('set', name);
        scene.mapper = runner(self);
    };

    function delegate(method) {
        self[method] = function(_) {
            var fn = mapper[method];
            if (fn)
                fn.apply(self, arguments);
        };
    }

    delegate('note');
    delegate('breath');
    delegate('program');
    delegate('pitchbend');

    this.phasor = function(time) {
        scene.sequence(time);
    };

    this.addCue = function(cueType, name, action) {
        var cuesForType = cues[cueType]
        methodIndex = cuesForType.length.toString();
        name = name || methodIndex;
        cuesForType.push([name, action]);
        post('New cue: ' + cueType + '.' + name + ' (' + methodIndex + ')\n');
    };

    function addCues(cueType, cueList) {
        var cuesForType = cues[cueType]
        for (var i in cueList) {
            var cue = cueList[i],
                name = cue[0],
                action = cue[1],
                methodIndex = cuesForType.length.toString();
            cuesForType.push([name, action]);
            post('New cue: ' + cueType + '.' + name +
                 ' (' + methodIndex + ')\n');
        }
    };

    this.addMapper = function(_) {
        addCues('mapper', arguments);
    };

    this.addSequence = function(_) {
        addCues('sequence', arguments);
    };

    this.testing = function(on) {
        self._clearDMX();
        if (on) {
            var test = {
                1: 192,
                9: 128,
#if 0
                17: 192,
                25: 128,
                33: 192,
                41: 128,
                49: 192,
                57: 128,
#endif
                70: 255,
                74: 255};
            for (var i in test)
                self._dmxoutput(parseInt(i), test[i]);
        }
    };
};
