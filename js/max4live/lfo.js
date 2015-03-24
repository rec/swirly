autowatch = 1;

#include "swirly/max/inlets.js"
#include "swirly/max/outlets.js"
#include "swirly/util/logging.js"

var IS_LIVE = true;

Max.SetInlets(
    ['sync', function(x) {
        var sync = (x == 'Sync') ? 1 : 0;
        Max.Out.rate_sync('hidden', 1 - sync);
        Max.Out.rate_hz('hidden', sync);

        if (IS_LIVE) {
            Max.Out.rate_sync('active', sync);
            Max.Out.rate_hz('active', 1 - sync);
        }
        if (sync)
            Max.Out.rate_sync('bang')
        else
            Max.Out.rate_hz('bang')
     },
     'Select between sync and freq.'],

    ['rate_hz', function(rate) {
     },
     'Input from rate_hz dial.'],

    ['rate_sync', function(rate) {
     },
     'Input from rate_sync dial.']
);

Max.SetOutlets(
    ['rate_hz', 'Frequency output'],
    ['rate_sync', 'Sync output'],
    ['phasor_frequency', 'Frequency for phasor'],
    ['phasor_phrase', 'Phase for phasor']
);

LOADED();
