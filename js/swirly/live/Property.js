#ifndef __LISTENTOPROPERTY
#define __LISTENTOPROPERTY

#include "swirly/live/live.js"

Live.this_track = 'this_device canonical_parent';

Live.ClipPath = function(slot, value) {
  return Live.this_track + ' clip_slots ' + slot + ' ' + value;
};

Live.ClipNamePath = function(slot) {
  return Live.ClipPath(slot, 'clip');
};

// Map names to path, propname pairs.
Live.propertyDictionary = {
  trackname: [Live.this_track, 'name'],
  clip: [Live.this_track, 'playing_slot_index'],
  fired: [Live.this_track, 'fired_slot_index'],
  clipname: [Live.ClipNamePath, 'name'],
};

Live.GetPropertyPath = function(property, arg) {
  var p = Live.propertyDictionary[property];
  if (p) {
    var path = p[0], name = p[1];
    if (typeof(path) == 'function')
      path = path(arg);
    return [path, name];
  }
};

Live.ListenToProperty = function(property, callback, arg) {
  var p = Live.GetPropertyPath(property, arg);
  if (p)
    Live.ListenToPropertyRaw(p[0], p[1], callback);
  else
    post("ERROR: Couldn't understand property '" + property + "'\n");
};

Live.ListenToPropertyRaw = function(path, propname, callback) {
  function localCallback(args) {
    if (args.length && args.length > 1 && args[0] == propname)
      callback(args[1]);
  };

  new LiveAPI(localCallback, path).property = propname;
};

Live.GetProperty = function(property, arg) {
  var p = Live.GetPropertyPath(property, arg);
  return p && p.length && p.length > 1 && new LiveAPI(p[0]).get(p[1]);
};

#endif  // __LISTENTOPROPERTY
