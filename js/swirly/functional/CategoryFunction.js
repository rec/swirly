#ifndef __CATEGORYFUNCTION
#define __CATEGORYFUNCTION

#include "swirly/functional/functional.js"

Functional.CategoryFunction = function(data, functions, category, command) {
  var func = functions[category];
  if (!func) {
    post("ERROR: (1) No command", command, "for", category, '\n');
    return;
  }

  var dataTable = data[category];
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

Functional.CategoryFunctionMaker = function(data, functions, category) {
  return function(command) {
    return function() {
      Functional.CategoryFunction(data, functions, category, command);
    };
  };
};

#endif  // __CATEGORYFUNCTION
