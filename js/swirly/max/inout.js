#ifndef __SWIRLY_MAX_INOUT__
#define __SWIRLY_MAX_INOUT__

#include "swirly/max/max.js"

Max.inlets = {};
Max.outlets = {};

Max.Inlets = function(_) {
  inlets = arguments.length;
  this.inlets = {};

  for (var i = 0; i < arguments.length; i++) {
    this.inlets[i] = arguments[i][0];
    setinletassist(i | 0, arguments[i][1]);
  };
};

Max.Outlets = function(_) {
  outlets = arguments.length;
  this.outlets = {};
  for (var i = 0; i < arguments.length; i++) {
    this.outlets[arguments[i][0]] = i;
    setoutletassist(i, arguments[i][1]);
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
