#pragma once

#include "swirly/windmapper/Envelope.js"
#include "swirly/windmapper/ShowRunner.js"

/**

A list of [controller, envelope].
Controller can be one number or it can be a list of numbers.

*/

function EnvelopeSeq(envelopes) {
    function Seq() {
        this.phasor = function(time) {
            if (!show._time) {
                post('no time\n');
                return;
            }
            var timeAfter = time + show._time[0] - show._cueBar;
            for (var i in envelopes) {
                var e = envelopes[i];
                var value = e[1].run(timeAfter);
                if (value !== undefined) {
                    var controllers = e[0];
                    if (typeof(controllers) === 'number')
                        controllers = [controllers];
                    for (var c in controllers)
                        show._dmxoutput(controllers[c], value);
                }
            }
        };
    };

    return function(show) { return new Seq(show); };
};
