#pragma once

#include "swirly/windmapper/Channels.js"
#include "swirly/windmapper/EnvelopeSequence.js"
#include "swirly/windmapper/Envelope.js"

var Scenes = {
    fadeIn: EnvelopeSequence(
        [[Channel.moving.x,
          new Envelope({data: [[0, 0], [0.5, 50], [3, 250]]} )]]),

    flash: Sequence(
        [0, 0],
        [1, {2: 100, 3: 100}],
        [2, 0],
        [3, {2: 100, 3: 100}],
        [4, 0]
    ),

    moving_mapper: NoteAndBreathMapper(Channel.moving),
};
