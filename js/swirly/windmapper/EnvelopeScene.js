#pragma once

#include "swirly/windmapper/Envelope.js"
#include "swirly/windmapper/ShowRunner.js"

/**

A list of [controller, envelope].
Controller can be one number or it can be a list of numbers.

*/

function EnvelopeScene(envelopes) {
    var self = this;

    this.run = function(time) {
        // Must be run using the ShowRunner as this.
        for (var i in envelopes) {
            var e = envelopes[i];
            var value = e[1].run(time);
            if (value !== undefined) {
                var controllers = e[0];
                if (typeof(controllers) === 'number')
                    controllers = [controllers];
                for (var c in controllers)
                    this._dmxoutput(c, value);
            }
        }
    };
};
