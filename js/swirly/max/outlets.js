#ifndef __SWIRLY_MAX_INOUT__
#define __SWIRLY_MAX_INOUT__

#include "swirly/max/max.js"
#include "swirly/util/string.js"

Max.outlets = {};

// Outlet to a named outlet.  You can still use the numbered outlets, too.
// You can override this in tests.
Max.Outlet = function(outletNumber, data) {
  if (Max.outlets && outletNumber in Max.outlets)
    outletNumber = Max.outlets[outletNumber];
  outlet(outletNumber || 0, data);
};

Max.Outlets = function(_) {
  outlets = arguments.length;
  this.outlets = {};
  for (var i = 0; i < arguments.length; i++) {
    var name = arguments[i], help = name;
    if (!Util.IsString(name)) {
      name = name[0];
      help = name[1] || name;
    }

    this.outlets[name] = i;
    setoutletassist(i, help);
  }
};

#endif  // __SWIRLY_MAX_INOUT__
