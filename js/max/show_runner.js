autowatch = 1;
outlets = 1;

#include "swirly/max/inlets.js"
#include "swirly/util/logging.js"
#include "swirly/windmapper/ShowRunner.js"
#include "swirly/windmapper/EnvelopeScene.js"
#include "swirly/windmapper/Envelope.js"

var _show_runner = new ShowRunner();

Max.ObjectInlets(_show_runner);

var Channels = {
    head: {
        x: 1,
        y: 2,
        rotation: 3,
        red: 4,
        green: 5,
        blue: 6,
        white: 7,
        partition: 8,
        inside: 9,
        dimmer: 10,
        strobe: 11,
        effect: 12,
        blank: 13,
        auto: 14,
    },
};

_show_runner._cues[0] = EnvelopeScene(
    [[Channels.head.x,  new Envelope(
        {
            data: [[0, 0], [5, 50]],
        })
    ]]
);

LOADED();
