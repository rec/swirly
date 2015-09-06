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

    this.filters = ['note', 'breath', 'program', 'transport', 'level'];

    this.replaceFilters = function(filters) {
        forEach(this.filters, function(name) {
            this[name] = filters[name] || function() {};
        });
    };

    this.control = function() {};
    this.test = function() {};
};
