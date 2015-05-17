#pragma once

#include "swirly/windmapper/Envelope.js"
#include "swirly/windmapper/ShowRunner.js"

/**

A list of [controller, envelope].
Controller can be one number or it can be a list of numbers.

*/

function EnvelopeScene(envelopes) {
    function Scene() {
        this.phasor = function(time) {
            if (!this._time) {
                post('no time\n');
                return;
            }
            // Must be run using the ShowRunner as this.
            var timeAfter = time + this._time[0] - this._cueBar;
            for (var i in envelopes) {
                var e = envelopes[i];
                var value = e[1].run(timeAfter);
                if (value !== undefined) {
                    var controllers = e[0];
                    if (typeof(controllers) === 'number')
                        controllers = [controllers];
                    for (var c in controllers)
                        this._dmxoutput(controllers[c], value);
                }
            }
        };
    };

    return function() { return new Scene(); };
};
