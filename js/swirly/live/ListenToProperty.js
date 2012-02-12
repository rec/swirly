#ifndef __LISTENTOPROPERTY
#define __LISTENTOPROPERTY

#include "swirly/live/live.js"

Live.ListenToProperty = function(path, propname, callback) {
  var live;
  function localCallback() {
    callback(live.get(propname));
  };
  live = new LiveAPI(localCallback, path);

  live.property = propname;
};

#endif  // __LISTENTOPROPERTY
