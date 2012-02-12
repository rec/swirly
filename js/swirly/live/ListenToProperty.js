#ifndef __LISTENTOPROPERTY
#define __LISTENTOPROPERTY

#include "swirly/live/translate_path.js"

Live.ListenToProperty = function(path, propname, callback) {
  var live;
  function localCallback() {
    callback(live.get(propname));
  };
  live = new LiveAPI(localCallback, Live.TranslatePath(path));

  live.property = 'mute';
};

#endif  // __LISTENTOPROPERTY
