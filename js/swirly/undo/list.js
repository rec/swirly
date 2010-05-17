#ifndef __SWIRLY_UNDO_LIST
#define __SWIRLY_UNDO_LIST

#include "swirly/undo/undo.js"

Undo.List = function(items) {
  return function() {
    var undoFunctions = [];

    // Do each item and store its undo record, backwards, in a list.
    for (var i = 0; i < items.length; ++i)
      undoFunctions.unshift(items[i]());

    return Undo.List(undoFunctions);
  };
};

#endif  // __SWIRLY_UNDO_LIST
