#ifndef __SWIRLY__MAX_OUTLET
#define __SWIRLY__MAX_OUTLET

#include "swirly/max/max.js"

// You can override this in tests.
Max.Outlet = function(outletNumber, data) {
  if (this.outlets && outletNumber in this.outlets)
    outletNumber = this.outlets[outletNumber];
  outlet(outletNumber || 0, data);
};

// Returns a function that sends data to outlet "outletNumber".
Max.OutletFunction = function(outletNumber) {
  return function(data) {
    Max.Outlet(outletNumber, data);
  };
};

Max.Inlet = function() {
  return (this.inlets && inlet in this.inlets) ? this.inlets[inlet] : inlet;
};

#endif  // __SWIRLY__MAX_OUTLET
