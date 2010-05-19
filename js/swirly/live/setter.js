#ifndef __SWIRLY_LIVE_SETTER
#define __SWIRLY_LIVE_SETTER

#include "swirly/live/live.js"
#include "swirly/live/translate_path.js"

Live.Setter = function(command) {
  return function() {
    var path = command.slice();
    var value = path.pop();
    var valueName = path.pop();
    var fullPath = Live.translatePath(path);

    if (!fullPath) {
      post('Unable to apply a function to path', path, '\n');
      return function() {};
    }

    Live.api.path = fullPath;
    var undo = command.slice();
    undo[undo.length - 1] = Live.api.get(valueName);
    Live.api.set(valueName, value);
    return Live.Setter(undo);
  };
};

#endif  // __SWIRLY_LIVE_SETTER
