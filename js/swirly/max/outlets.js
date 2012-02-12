#ifndef __SWIRLY_MAX_INOUT__
#define __SWIRLY_MAX_INOUT__

#include "swirly/max/max.js"
#include "swirly/util/string.js"

// Max.Out gets filled in when you call Max.Outlets, so you can do things like:
//   Max.Outlets('foo', 'bar', 'baz');
//   Max.Out.foo('message', 'here');
Max.Out = {};

// Outlet to a named outlet.  You can still use the numbered outlets, too.
// You can override this in tests.
Max.Outlet = function(outletNumber, data) {
  if (Max._outlets && outletNumber in Max._outlets)
    outletNumber = Max._outlets[outletNumber];
  outlet(outletNumber || 0, data);
};

Max.Outlets = function(_) {
  outlets = arguments.length;
  Max._outlets = {};
  for (var i = 0; i < arguments.length; i++) {
    var name = arguments[i], help = name;
    if (!Util.IsString(name)) {
      name = name[0];
      help = name[1] || name;
    }

    Max._outlets[name] = i;
    setoutletassist(i, help);
    function makeFunction() {
      var j = i;
      return function(_) { outlet(j, arrayfromargs(arguments)); };
    };
    Max.Out[name] = makeFunction();
  }
};

Max._outlets = {};

#endif  // __SWIRLY_MAX_INOUT__
