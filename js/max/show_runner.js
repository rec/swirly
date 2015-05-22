autowatch = 1;
outlets = 1;

#include "swirly/max/inlets.js"
#include "swirly/util/logging.js"
#include "swirly/windmapper/ShowRunner.js"
#include "swirly/windmapper/EnvelopeSequence.js"
#include "swirly/windmapper/NoteAndBreathMapper.js"
#include "swirly/windmapper/Envelope.js"
#include "swirly/windmapper/Channels.js"

var _show_runner = new ShowRunner();

Max.ObjectInlets(_show_runner);

_show_runner.addCue(
    'sequence', 'test',
    EnvelopeSequence(
        [[MovingHead.channels.x,  new Envelope(
            {
                data: [[0, 0], [4, 50], [8, 250]]
            })
         ]]
    )
);

_show_runner.addCue(
    'mapper', 'test',
    NoteAndBreathMapper(MovingHead.channels)
);

LOADED();
