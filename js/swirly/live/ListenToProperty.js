#ifndef __LISTENTOPROPERTY
#define __LISTENTOPROPERTY

#include "swirly/live/live.js"

Live.propertyDictionary = {
  trackname: ['this_device canonical_parent', 'name'],
};

Live.ListenToProperty = function(property, callback) {
  var p = Live.propertyDictionary[property];
  if (!p)
    return false;

  var live;
  var path = p[0], propname = p[1];
  function localCallback() {
    if (live)
      callback(live.get(propname));
  };

  live = new LiveAPI(localCallback, path);
  live.property = propname;
  return true;
};

Live.GetProperty = function(path, propname) {
  var p = Live.propertyDictionary[property];
  if (p)
    return new LiveAPI(p[0]).get(p[1]);
};

#endif  // __LISTENTOPROPERTY
