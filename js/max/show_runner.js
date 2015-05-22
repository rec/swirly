autowatch = 1;
outlets = 1;

#include "swirly/max/inlets.js"
#include "swirly/util/logging.js"
#include "swirly/windmapper/Channels.js"
#include "swirly/windmapper/Envelope.js"
#include "swirly/windmapper/EnvelopeSequence.js"
#include "swirly/windmapper/NoteAndBreathMapper.js"
#include "swirly/windmapper/Loop.js"
#include "swirly/windmapper/Sequencer.js"
#include "swirly/windmapper/ShowRunner.js"

var _show_runner = new ShowRunner();

Max.ObjectInlets(_show_runner);

_fade_in = EnvelopeSequence(
    [[MovingHead.channels.x, new Envelope({data: [[0, 0], [0.5, 50], [3, 250]]})]
    ]);

_show_runner.addCue(
    'sequence', 'test',
    Loop(_fade_in, 3, 2)
);

_show_runner.addCue(
    'sequence', 'test2',
    Sequence(
        [[0, 0], [1, {2:100, 3:100}], [2, 0], [3, {2:100, 3:100}], [4, 0]]
    )
);

_show_runner.addCue(
    'mapper', 'test',
    NoteAndBreathMapper(MovingHead.channels)
);

LOADED();
