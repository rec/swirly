#if 0
#ifndef __SWIRLY_FUNCTIONAL_ARGUMENT_TABLE
#define __SWIRLY_FUNCTIONAL_ARGUMENT_TABLE

#include "swirly/functional/functional.js"

Functional.ArgumentTable = function(f, table) {
  return Function.Partial(Functional.ApplyTable)(f, table);
};

Functional.ApplicationTable = function(f, table) {
  function applicationTable(name) {
    return Functional.Apply(f, table[name]);
  };

  return applicationTable;
};

#endif  // __SWIRLY_FUNCTIONAL_ARGUMENT_TABLE
#endif