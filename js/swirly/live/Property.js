#ifndef __LISTENTOPROPERTY
#define __LISTENTOPROPERTY

#include "swirly/live/live.js"

// Map names to path, propname pairs.
Live.propertyDictionary = {
  trackname: ['this_device canonical_parent', 'name'],
  clipslot: ['this_device canonical_parent', 'playing_slot_index'],
};

Live.ListenToProperty = function(property, callback) {
  var p = Live.propertyDictionary[property];
  if (!p)
    return false;

  var path = p[0], propname = p[1];
  function localCallback(args) {
    if (args[0] == propname)
      callback(args[1]);
  };

  new LiveAPI(localCallback, path).property = propname;
  return true;
};

Live.GetProperty = function(property) {
  var p = Live.propertyDictionary[property];
  return p && new LiveAPI(p[0]).get(p[1]);
};

#endif  // __LISTENTOPROPERTY
