#pragma once

#include "swirly/max/findObjects.js"
#include "swirly/util/print.js"

function ShowRunner() {
    var that = this;
    this._help = {
        'transport': 'A list representing the transport number.',
        'note': 'MIDI note on and off',
        'breath': 'breath control',
        'program': 'program change',
        'pitchbend': 'pitchbend',
        'level': 'audio level',
        'phasor': 'The phasor value between 0 and 1',
        'timer': 'Result of some incoming time',
    };

    function fromProxy(name) {
        return function(_) {
            if (!that.proxy) {
                post('ERROR: no proxy (method=', name, ')\n');
            } else {
                var method = that.proxy[fname];
                if (method)
                    method.apply(this, arrayfromargs(arguments));
                else
                    post('ERROR: no proxy method for name=', name, '\n');
            }
        };
    };

    for (var name in this._help)
        this[name] = fromProxy(name);

    this.objects = Max.findAll();
};
