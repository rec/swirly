autowatch = 1;
outlets = 1;

#include "swirly/util/logging.js"
#include "swirly/delay-laser/DelayLaser.js"
#include "swirly/max/inlets.js"

// Logging.setLogging(!true);

Max.objectInlets(
    Laser.DelayLaser(),
    ['cc', 'Continuous controller'],
    ['allOff', 'Turn all lasers off'],
    ['notes', 'MIDI note on and off from keyboard'],
    ['spacebar', 'True exactly when spacebar is held down']);

PRINT_MESSAGE_ON_LOAD();
