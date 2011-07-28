#ifndef __SWIRLY_FUNCTIONAL_CHAIN
#define __SWIRLY_FUNCTIONAL_CHAIN

#include "swirly/functional/apply.js"
#include "swirly/array/is.js"
#include "swirly/util/print.js"

// Chain calls Apply(f, x) for each value given, chaining results so that the
// result of the previous step is the functional used in the next step.
Functional.Chain = function(f, values) {
  if (!Array.Is(values))
    values = [values];

  for (var i = 0; i < values.length; ++i)
    f = f && Functional.Apply(f, values[i]);

  return f;
};

Functional.ChainArg = function(f, _) {
  return Functional.Chain(f, arrayfromargs(arguments).slice(1));
};


#endif  // __SWIRLY_FUNCTIONAL_CHAIN
