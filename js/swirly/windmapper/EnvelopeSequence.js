#pragma once

/**

A list of [controller, envelope].
Controller can be one number or it can be a list of numbers.

*/

function EnvelopeSequence(envelopes) {
    function Sequence(show) {
        var cueBar = show._time[0];
        this.phasor = function(time) {
            var timeAfter = time + show._time[0] - cueBar;
            for (var i in envelopes) {
                var e = envelopes[i];
                var value = e[1].run(timeAfter);
                if (value !== undefined) {
                    var controllers = e[0], type = typeof(controllers);
                    if (type === 'string')
                        controllers = [parseInt(controllers)];
                    else if (type === 'number')
                        controllers = [controllers];

                    for (var c in controllers)
                        show._dmxoutput(controllers[c], value);
                }
            }
        };
    };

    return function(show) { return new Sequence(show); };
};
