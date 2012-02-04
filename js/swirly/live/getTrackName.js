#ifndef __GETTRACKNAME
#define __GETTRACKNAME

#include "swirly/live/live.js"

Live.getTrackName = function() {
  return new LiveAPI('this_device canonical_parent').get('name');
};

#endif  // __GETTRACKNAME
