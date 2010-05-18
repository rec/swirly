#ifndef __SWIRLY_UNDO_SETTER
#define __SWIRLY_UNDO_SETTER

#include "swirly/undo/undo.js"

Undo.Setter = function(item, name, value, del) {
  return function() {
    var oldExists = name in item;
    var oldValue = item[name];

    if (del)
      delete item[name];
    else
      item[name] = value;

    return Undo.Setter(item, name, oldValue, !oldExists);
  };
};

#endif  // __SWIRLY_UNDO_SETTER
