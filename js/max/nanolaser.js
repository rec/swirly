autowatch = 1;
outlets = 0;

#include "swirly/max/findObjects.js"
#include "swirly/max/inlets.js"
// #include "swirly/max/outlets.js"
#include "swirly/util/print.js"
#include "swirly/util/logging.js"

var Laser = {}

Laser.dmx = {
    mode: 0,
    pattern: 1,
    zoom: 2,
    xrot: 3,
    yrot: 4,
    zrot: 5,
    horizontal: 6,
    vertical: 7,
    color: 8,
};

Laser.fader = function(name, begin, end) {
    return function(value) {
        //post('fader', value, '\n');
    };
};

Laser.reset = function() {
    // Max.Out.dmx('/dev/cu.usbserial-6AYL2V8Z');
    // Max.Out.midiin('nanoKONTROL SLIDER/KNOB ');
    Laser.dmxusbpro = Max.findClass('dmxusbpro')[0];
    Laser.dmxusbpro.message('/dev/cu.usbserial-6AYL2V8Z');

    Laser.midiin = Max.findClass('midiin')[0];
    Laser.midiin.message('nanoKONTROL SLIDER/KNOB');

    Laser.multisliders = [];
    for (var i = 0; i < 8; ++i) {
        var multislider = Max.findName('multislider[' + (i + 1) + ']')[0];
        var values = [0, 0, 0, 0, 0, 0, 0, 0, 0];
        Laser.multisliders.push([multislider, values]);
        Laser.emitSlider(i);
    }
};

Laser.emitSlider = function(i) {
    var ms = Laser.multisliders[i];
    ms[0].message(ms[1]);
};

Laser.controller = {
     0: Laser.fader('pattern', 0, 255),
     1: Laser.fader('zoom', 0, 127),
     2: Laser.fader('xrot', 0, 127),
     3: Laser.fader('yrot', 0, 127),
     4: Laser.fader('zrot', 0, 127),
     5: Laser.fader('hpos', 0, 127),
     6: Laser.fader('vpos', 0, 127),
     7: Laser.fader('color', 128, 255),

    11: Laser.fader('zoom', 128, 255),
    12: Laser.fader('xrot', 128, 255),
    13: Laser.fader('yrot', 128, 255),
    14: Laser.fader('zrot', 128, 255),
    15: Laser.fader('hpos', 128, 255),
    16: Laser.fader('vpos', 128, 255),
};

Max.SetInlets(
    ['cc', function(c, v) { Laser.controller[c](v); }, 'Continuous controller'],
    ['reset', Laser.reset(), 'Reset everything']
);

LOADED();
