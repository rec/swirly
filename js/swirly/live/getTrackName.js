#ifndef __GETTRACKNAME
#define __GETTRACKNAME

#include "swirly/live/live.js"
#include "swirly/util/string.js"

#include "swirly/util/print.js"

Live.getTrackName = function() {
  return new LiveAPI('this_device canonical_parent').get('name');
};

Live.onTrackName = function(callback) {
  var live;
  function localCallback() {
    if (live)  // Not sure why live is sometimes null, but it is.
      callback(Util.LiveStringToString(live.get('name')));
  };
  live = new LiveAPI(localCallback, 'this_device canonical_parent');

  live.property = 'name';
};

#endif  // __GETTRACKNAME
