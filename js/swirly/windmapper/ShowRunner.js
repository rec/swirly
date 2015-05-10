#pragma once

#include "swirly/max/findObjects.js"
#include "swirly/util/print.js"

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
    this._help = {
        'transport': 'A list representing the transport number.',
        'note': 'MIDI note on and off',
        'breath': 'breath control',
        'program': 'program change',
        'pitchbend': 'pitchbend',
        'level': 'audio level',
        'phasor': 'The phasor value between 0 and 1',
        'timer': 'Result of some incoming time',
        'load': 'Load a scene from a disk file.'
    };

    this.scene = new DefaultScene();

    var self = this;

    function delegateToScene(name) {
        return function(_) {
            var method = self.scene[name];
            if (method)
                method.apply(self, arrayfromargs(arguments));
            else
                post('ERROR: no proxy method for name=', name, '\n');
        };
    };

    function load(fname) {
        post('loading ', fname, '\n');
    };

    for (var name in this._help)
        this[name] = (name == 'load') ? load : delegateToScene(name);

    this.objects = Max.findAll();
};
