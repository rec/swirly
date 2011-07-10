#ifndef __SWIRLY_LIVE_SETTER
#define __SWIRLY_LIVE_SETTER

#include "swirly/live/live.js"
#include "swirly/live/translate_path.js"

// Live.Setter returns an undoable function that sets a named value inside the
// Live Object Model.  You can see examples of how to use undoable commands in
// the unit tests for swirly/undo - you'd probably use this with an undo stack.
//
// path:
//   a path to the Live Object to change (see swirly/live/translate_path.js
//   for more details on how paths are formed)
// name:
//   the name of the parameter to set
// value:
//   the value to put into the named parameter.
//
Live.Setter = function(path, name, value) {
  return function() {
    var fullPath = Live.TranslatePath(path);

    if (!fullPath) {
      post('Unable to apply a function to path', path, '\n');
      return function() {};
    }

    Live.api.path = fullPath;
    var undo = command.slice();
    undo[undo.length - 1] = Live.api.get(name);
    Live.api.set(name, value);
    return Live.Setter(undo);
  };
};

#endif  // __SWIRLY_LIVE_SETTER
