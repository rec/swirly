#ifndef __SWIRLY_UNDO_SETTER
#define __SWIRLY_UNDO_SETTER

#include "swirly/undo/undo.js"

// Undo.Setter returns an undoable function that sets a named value in an object.
Undo.Setter = function(object, name, value, del) {
  return function() {
    var oldExists = name in object;
    var oldValue = object[name];

    if (del)
      delete object[name];
    else
      object[name] = value;

    return Undo.Setter(object, name, oldValue, !oldExists);
  };
};

#endif  // __SWIRLY_UNDO_SETTER
