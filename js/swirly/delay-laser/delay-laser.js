autowatch = 1;
outlets = 1;

#include "swirly/util/logging.js"
#include "swirly/delay-laser/DelayLaser.js"
#include "swirly/max/inlets.js"

// Logging.setLogging(!true);

Max.objectInlets(
    new Laser.DelayLaser(),
    ['cc', 'Continuous controller'],
    ['allOff', 'Turn all lasers off'],
    ['notes', 'MIDI note on and off from keyboard'],
    ['init', 'Post-construction initialization']
);

PRINT_MESSAGE_ON_LOAD();
