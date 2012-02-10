#ifndef __SWIRLY_MAX_INOUT__
#define __SWIRLY_MAX_INOUT__

#include "swirly/max/max.js"
#include "swirly/util/is_string.js"

Max.inlets = {};
Max.outlets = {};

Max.Split = function(entry) {
  return Util.IsString(entry) ? [entry, entry] : entry;
};

Max.Inlets = function(_) {
  inlets = arguments.length;
  this.inlets = {};

  for (var i = 0; i < arguments.length; i++) {
    var entry = Max.Split(arguments[i]);
    this.inlets[i] = entry[0];
    setinletassist(i, entry[1]);
  };
};

Max.Outlets = function(_) {
  outlets = arguments.length;
  this.outlets = {};
  for (var i = 0; i < arguments.length; i++) {
    var entry = Max.Split(arguments[i]);
    this.outlets[entry[0]] = i;
    setoutletassist(i, entry[1]);
  }
};

Max.anything = function(args) {
  if (inlet in this.inlets)
    return this.inlets[inlet].apply(this, args);
  else
    post("Couldn't understand message", inlet, '\n');
};

function anything(_) {
  Max.anything(arrayfromargs(arguments));
};

#endif  // __SWIRLY_MAX_INOUT__
