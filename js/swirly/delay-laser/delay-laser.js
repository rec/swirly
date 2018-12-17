autowatch = 1;
outlets = 1;

#include "swirly/util/logging.js"

Logging.setLogging(!true);

#include "swirly/delay-laser/DelayLaser.js"
#include "swirly/max/inlets.js"

var LASER = new Laser.DelayLaser();

Max.SetInlets(
    ['cc', LASER.cc, 'Continuous controller'],
    ['allOff', LASER.allOff, 'Turn all lasers off'],
    ['notes', LASER.notes, 'MIDI note on and off from keyboard'],
    ['spacebar', LASER.spacebar, 'True exactly when spacebar is held down']
);

PRINT_MESSAGE_ON_LOAD();
