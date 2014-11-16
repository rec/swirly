autowatch = 1;

#include "swirly/util/logging.js"

#include "swirly/max/inlets.js"
#include "swirly/max/outlets.js"

/*

 inputs:
   scene changes from Live.
   some subset of MIDI.
   clock ticks for every beat.


 starts new scenes.
 recognizes trigger cues.
 recognizes scene changes.

outputs:
  tempo envelopes
  scene changes
  clip changes
  MIDI CCs.

What does a score look like?



*/

LOADED();
