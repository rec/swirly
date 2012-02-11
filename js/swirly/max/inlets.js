#ifndef __SWIRLY_INLETS
#define __SWIRLY_INLETS

#include "swirly/max/max.js"

// Name each inlet and set a callback function
// Usage:
//   Max.Inlets(['inletName', callbackFn, 'help'],
//              ['nextInletName', callbackFn2, 'more help']);
// If there is no help entry, it defaults to the name of the inlet.
Max.Inlets = function(_) {
  for (var i = 0; i < arguments.length; ++i) {
    var entry = arguments[i];
    this.inlets[i] = {name: entry[0], func: entry[1]};
    setinletassist(i, entry[2] || entry[0]);
  }
};

// Return the name of the current inlet, or the numeric name if you haven't set
// the names.
Max.Inlet = function() {
  return (Max.inlets && inlet in Max.inlets) ? Max.inlets[inlet] : inlet;
};

function anything(_) {
  var entry = Max.inlets[inlet];
  if (entry && entry.func)
    entry.func.apply(this, arrayfromargs(arguments));
};

Max.inlets = {};

#endif  // __SWIRLY_INLETS
