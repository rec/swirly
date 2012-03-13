#ifndef __LISTENTOPROPERTY
#define __LISTENTOPROPERTY

#include "swirly/live/live.js"

Live.this_track = 'this_device canonical_parent';

// Map names to path, propname pairs.
Live.propertyDictionary = {
  trackname: [Live.this_track, 'name'],
  clipslot: [Live.this_track, 'playing_slot_index'],
  clipname: [function(slot) {
    return Live.this_track + ' clip_slots ' + slot + ' clip';
  }, 'name'],
};

Live.GetPropertyPath = function(property, arg) {
  var p = Live.propertyDictionary[property];
  if (p) {
    var path = p[0], name = p[1];
    return [(typeof(path) == 'function') ? path(arg) : path, name];
  }
};

Live.ListenToProperty = function(property, callback, arg) {
  var p = Live.GetPropertyPath(property, arg);
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

Live.GetProperty = function(property, arg) {
  var p = Live.GetPropertyPath(property, arg);
  return p && new LiveAPI(p[0]).get(p[1]);
};

#endif  // __LISTENTOPROPERTY
