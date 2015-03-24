autowatch = 1;
outlets = 0;

#include "swirly/laser/Instrument.js"
#include "swirly/max/findObjects.js"
#include "swirly/max/inlets.js"
#include "swirly/util/print.js"
#include "swirly/util/logging.js"

var NanoLaser = {}

NanoLaser.fader = function(name, begin, end) {
    return function(value) {
        post('fader', value, '\n');
    };
};

NanoLaser.reset = function() {
    // Max.Out.dmx('/dev/cu.usbserial-6AYL2V8Z');
    // Max.Out.midiin('nanoKONTROL SLIDER/KNOB ');
    NanoLaser.dmxusbpro = Max.findClass('dmxusbpro')[0];
    NanoLaser.dmxusbpro.message('/dev/cu.usbserial-6AYL2V8Z');

    NanoLaser.midiin = Max.findClass('midiin')[0];
    NanoLaser.midiin.message('nanoKONTROL SLIDER/KNOB');

    NanoLaser.multisliders = [];
    for (var i = 0; i < 8; ++i) {
        var multislider = Max.findName('multislider[' + (i + 1) + ']')[0];
        var values = [0, 0, 0, 0, 0, 0, 0, 0, 0];
        NanoLaser.multisliders.push([multislider, values]);
        NanoLaser.emitSlider(i);
    }
};

Max.SetInlets(
    ['cc', function(c, v) { NanoLaser.controller[c](v); }, 'Continuous controller'],
    ['reset', NanoLaser.reset, 'Reset everything']
);

NanoLaser.emitSlider = function(i) {
    var ms = NanoLaser.multisliders[i];
    ms[0].message(ms[1]);
};

NanoLaser.controller = {
     0: NanoLaser.fader('pattern', 0, 255),
     1: NanoLaser.fader('zoom', 0, 127),
     2: NanoLaser.fader('xrot', 0, 127),
     3: NanoLaser.fader('yrot', 0, 127),
     4: NanoLaser.fader('zrot', 0, 127),
     5: NanoLaser.fader('hpos', 0, 127),
     6: NanoLaser.fader('vpos', 0, 127),
     7: NanoLaser.fader('color', 128, 255),

    11: NanoLaser.fader('zoom', 128, 255),
    12: NanoLaser.fader('xrot', 128, 255),
    13: NanoLaser.fader('yrot', 128, 255),
    14: NanoLaser.fader('zrot', 128, 255),
    15: NanoLaser.fader('hpos', 128, 255),
    16: NanoLaser.fader('vpos', 128, 255),
};

NanoLaser.reset();

LOADED();
