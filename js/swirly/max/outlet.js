#ifndef __SWIRLY__MAX_OUTLET
#define __SWIRLY__MAX_OUTLET

#include "swirly/max/max.js"
#include "swirly/functional/partial.js"

// You can override this in tests.
Max.Outlet = function(outletNumber, data) {
  outlet(outletNumber || 0, data);
};

// Returns a function that sends data to outlet "outletNumber".
Max.OutletFunction = function(outletNumber) {
  return function(data) {
    Max.Outlet(outletNumber, data);
  };
};

#endif  // __SWIRLY__MAX_OUTLET
