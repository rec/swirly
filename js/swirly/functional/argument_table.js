#ifndef __SWIRLY_FUNCTIONAL_ARGUMENT_TABLE
#define __SWIRLY_FUNCTIONAL_ARGUMENT_TABLE

#include "swirly/functional/functional.js"

Functional.ArgumentTable = function(f, table) {
  function fn(name) { return f(table[name]); };
  return fn;
};

#endif  // __SWIRLY_FUNCTIONAL_ARGUMENT_TABLE
