#pragma once

#include "swirly/max/findObjects.js"
#include "swirly/util/Error.js"
#include "swirly/util/print.js"

function ShowRunner() {
    var self = this;

    var objects = Max.findAll(),
        dmxusbpro = objects.maxclass.dmxusbpro;

    this._methods = [
        ['note', 'MIDI note on and off'],
        ['breath', 'breath control'],
        ['program', 'program change'],
        ['transport', 'A list representing the transport number.'],
        ['control', 'Notes controlling the ShowRunner.'],
        ['level', 'audio level'],
        ['test', 'Turn on and off individual instruments.'],
    ];

    for (var i in this._methods) {
        var m = this._methods[i];
        this[m[0]] = function() {};
    }
};
