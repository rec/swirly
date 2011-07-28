#ifndef __SWIRLY_MIDI
#define __SWIRLY_MIDI

var MIDI = {};

Midi.Outlet = function(outletIndex) {
  return function(_) {
    outlet(outletIndex, arrayfromargs(arguments));
  };
};

#endif  // __SWIRLY_MIDI
