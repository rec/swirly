#ifndef __SWIRLY_FUNCTIONAL_COMPOSE
#define __SWIRLY_FUNCTIONAL_COMPOSE

#include "swirly/functional/apply.js"

Functional.Compose = function(_) {
  var args = arguments;
  function compose(x) {
    for (var i = args.length - 1; i >= 0; --i)
      x = Functional.Apply(args[i], x);
    return x;
  };
  return compose;
};


#endif  // __SWIRLY_FUNCTIONAL_COMPOSE
