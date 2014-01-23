#ifndef __SWIRLY_INLETS
#define __SWIRLY_INLETS

#include "swirly/max/max.js"

Max.inlets = {};
Max.messageNames = {msg_int: 1, msg_float: 1, list: 1};
Max.applyEntry = false;

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
  return (inlet in Max.inlets) ? Max.inlets[inlet] : inlet;
};

function anything(_) {
  var entry = Max.inlets[inlet];
  if (entry && entry.func) {
    var args = arrayfromargs(arguments);
    if (!Max.messageNames[messagename])
      args = [messagename].concat(args);
    if (Max.applyEntry)
      entry.func.apply(this, args);
    else
      entry.func(args);
  } else {
    post("Didn't understand input for", Max.Inlet(), '\n');
  }
};

#endif  // __SWIRLY_INLETS
