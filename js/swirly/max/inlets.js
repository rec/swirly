#ifndef __SWIRLY_INLETS
#define __SWIRLY_INLETS

#include "swirly/max/max.js"

// Name each inlet and set a callback function
// Usage:
//   Max.SetInlets(['inletName', callbackFn, 'help'],
//                 ['nextInletName', callbackFn2, 'more help']);
// If there is no help entry, it defaults to the name of the inlet.
Max.SetInlets = function(_) {
  inlets = arguments.length;
  for (var i = 0; i < arguments.length; ++i) {
    var entry = arguments[i];
    Max.inlets[i] = {name: entry[0], func: entry[1]};
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
  else
    post("Didn't understand input for", inlet, Max.Inlet(), Print(entry), '\n');
};

Max.inlets = {};

#endif  // __SWIRLY_INLETS
