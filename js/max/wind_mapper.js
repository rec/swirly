autowatch = 1;

#include "swirly/max/inlets.js"
#include "swirly/max/outlets.js"
#include "swirly/util/logging.js"
#include "swirly/util/Color.js"
#include "swirly/util/Range.js"

Max.SetOutlets(['lights', 'To lighting MIDI CC.'],
               ['level', 'Accumulated input level from 0 to 1.'])

function Mapper(channel, range) {
    this.channel = channel;
    this.range = range;
};

Mapper.prototype.select = function(level) {
    outlet(0, this.channel, this.range.select(level));
};

var breath = 0;

var range = {};

range.midi = new Util.Range();
range.note = new Util.Range(33, 103);
// range.note = new Util.Range(23, 105);
range.pan = new Util.Range();
range.tilt = new Util.Range();
range.dimmer = new Util.Range(4, 67);

var channel = {};

channel.pan = 0;
channel.tilt = channel.pan + 1;
channel.dimmer = channel.tilt + 2;
channel.r = channel.dimmer + 1;
channel.g = channel.r + 1;
channel.b = channel.g + 1;

var dimmer = new Mapper(channel.dimmer, range.dimmer),
    pan = new Mapper(channel.pan, range.pan),
    tilt = new Mapper(channel.tilt, range.tilt);

function levelOut() {
    var level = range.midi.ratio(breath);
    outlet(1, level);
    dimmer.select(level);
    tilt.select(level);
    pan.select(level);
};

Max.SetInlets(
    ['note',
     function(note) {
         var hue = range.note.ratio(note);
         var rgb = Util.hsvToRgb(hue, 1.0, 1.0);
         outlet(0, channel.r, rgb[0]);
         outlet(0, channel.g, rgb[1]);
         outlet(0, channel.b, rgb[2]);
     },
     'Note number.'],

    ['controller',
     function(x) {
         breath = x;
         levelOut();
     },
     'Breath control.'],

    ['program',
     function(x) {
         pan.range.begin = Number(x);
         levelOut();
     },
     'Minimum pan.'],

    ['pitchbend',
     function(x) {
         pan.range.end = Number(x);
         levelOut();
     },
     'Maximum pan.'],

    ['gain',
     function(x) {
         tilt.range.begin = Number(x);
         levelOut();
     },
     'Minimum tilt.'],

    ['timer',
     function(x) {
         tilt.range.end = Number(x);
         levelOut();
     },
     'Maximum tilt.'],

    ['phasor',
     function(x) {
         tilt.range.end = Number(x);
         levelOut();
     },
     'Maximum tilt.'],

    ['transport',
     function(x) {
         tilt.range.end = Number(x);
         levelOut();
     },
     'Maximum tilt.'],
);

LOADED();
