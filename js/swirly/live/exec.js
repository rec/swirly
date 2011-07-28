#ifndef __SWIRLY_LIVE_EXEC__
#define __SWIRLY_LIVE_EXEC__

#include "live/apply.js"

Live.Exec = function(commands) {
  for (var i = 0; i < commands.length; ++i)
    Live.Apply(commands[i]);
};

#endif  // __SWIRLY_LIVE_EXEC__
