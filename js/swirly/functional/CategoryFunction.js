#ifndef __CATEGORYFUNCTION
#define __CATEGORYFUNCTION

#include "swirly/functional/functional.js"

Functional.GetCategoryFunction = function(categoryData, categoryFunctions,
                                          category, command) {
  var func = categoryFunctions[category];
  if (!func) {
    post("ERROR: (1) No command", command, "for", category, '\n');
    return;
  }

  var dataTable = categoryData[category];
  if (!dataTable) {
    post("ERROR: (2) No command", command, "for", category, '\n');
    return;
  }

  var data = dataTable[command];
  if (!data) {
    post("ERROR: (3) No command", command, "for", category, '\n');
    return;
  }

  return func(command, data);
};

#endif  // __CATEGORYFUNCTION
