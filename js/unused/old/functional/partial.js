#ifndef __SWIRLY_FUNCTIONAL_PARTIAL
#define __SWIRLY_FUNCTIONAL_PARTIAL

#include "swirly/functional/functional.js"

// Partial(f) partially binds arguments to the front or back of f, so that,
// for example:
//
//   Partial(f)      (a, b, c)(d, e, f) := f(a, b, c, d, e, f).
//   Partial(f, true)(a, b, c)(d, e, f) := f(d, e, f, a, b, c).
Functional.Partial = function(f, reversed) {
    return function(_) {
        var args = arrayfromargs(arguments);

        return function(_) {
            var newArgs = arrayfromargs(arguments),
                arg1 = reversed ? newArgs : args,
                arg2 = reversed ? args : newArgs;
            return f.apply(this, arg1.concat(arg2)));
        };
    };
};

#endif  // __SWIRLY_FUNCTIONAL_PARTIAL
