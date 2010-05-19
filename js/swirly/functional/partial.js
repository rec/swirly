#ifndef __FUNCTIONAL_PARTIAL
#define __SWIRLY_FUNCTIONAL_PARTIAL

#include "swirly/array/concat.js"
#include "swirly/functional/functional.js"

// Partial(f) partially binds arguments to the front or back of f, so that,
// for example:
//
//   Partial(f)      (a, b, c)(d, e, f) := f(a, b, c, d, e, f).
//   Partial(f, true)(a, b, c)(d, e, f) := f(d, e, f, a, b, c).
Functional.Partial = function(f, reversed) {
  return function(_) {
    var args = arguments;

    return function(_) {
      var arg1 = reversed ? arguments : args;
      var arg2 = reversed ? args : arguments;
      return f.apply(this, Array.Concat(arg1, arg2));
    };
  };
};

#endif  // __SWIRLY_FUNCTIONAL_PARTIAL
