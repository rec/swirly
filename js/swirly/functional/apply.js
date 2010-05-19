#ifndef __SWIRLY_FUNCTIONAL_APPLY
#define __SWIRLY_FUNCTIONAL_APPLY

#include "swirly/functional/functional.js"

// Apply(f, x, dflt) returns f(x) if f is a function, f[x] if f is a non-null
// object, or dflt otherwise.
Functional.Apply = function(f, x, dflt) {
  var t = typeof(f);
  if (t == 'function')
    return f(x);

  if (f && (t == 'object'))
    return f[x];

  return dflt;
};

#endif  // __SWIRLY_FUNCTIONAL_APPLY
