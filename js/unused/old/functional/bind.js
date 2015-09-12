#ifndef __SWIRLY__BIND
#define __SWIRLY__BIND

#include "swirly/functional/functional.js"

Functional.Bind = function(that, method, _) {
  var args = arrayfromargs(arguments).slice(2);
  return function(_) {
    method.apply(that, args.concat(arrayfromargs(arguments)));
  };
};

#endif  // __SWIRLY__BIND
