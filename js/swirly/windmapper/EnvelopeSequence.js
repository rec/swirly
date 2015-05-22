#pragma once

#include "swirly/windmapper/BarSync.js"

/**

A list of [controller, envelope].
Controller can be one number or it can be a list of numbers.

*/

function EnvelopeSequence(envelopes) {
    return BarSync(function(show, time) {
        for (var i in envelopes) {
            var e = envelopes[i];
            var value = e[1].run(time);
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
    });
};
