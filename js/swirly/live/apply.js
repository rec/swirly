#ifndef __LIVE_APPLY
#define __LIVE_APPLY

#include "swirly/live/translate_path.js"

Live.Apply = function(command) {
  var len = command.length - 2;
  var path = Live.TranslatePath(command.slice(0, len));

  if (path.length) {
    Live.api.path = path;
    Live.api.set(command[len - 1], command[len]);
  } else {
    post('Unable to apply command', command, '\n');
  }
};

#endif  // __LIVE_APPLY
