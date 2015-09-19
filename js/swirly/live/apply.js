#ifndef __LIVE_APPLY
#define __LIVE_APPLY

#include "swirly/live/translate_path.js"

Live.Apply = function(command) {
  var len = command.length - 2;
  var path = Live.TranslatePath(command.slice(0, len));

  if (path && path.length) {
    Live.api.path = path;
    Live.api.set(command[len - 1], command[len]);
  } else {
    post('Unable to apply command', command);
  }
};

Live.Exec = function(commands) {
  for (var i = 0; i < commands.length; ++i)
    Live.Apply(commands[i]);
};

#endif  // __LIVE_APPLY
