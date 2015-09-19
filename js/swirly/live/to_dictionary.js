#ifndef __TO_DICTIONARY
#define __TO_DICTIONARY

#include "swirly/live/info.js"

// Return a dictionary with at most a single entry, property, that's filled with
// a dictionary of properties on the current Live Object Mode, if there are any.
Live.ToPropertyDictionary = function() {
  var result = {};
  var prop_dict;

  // Add the fake "property" object.
  for (var prop in Live.Info().property) {
    if (prop != 'canonical_parent') {
      if (!prop_dict)  // This is our first entry.
        result['property'] = prop_dict = {}

      prop_dict[prop] = Live.api.get(prop);
    }
  }

  return result;
};

Live.count = 0;

// Convert the Live Object model to a Javascript dictionary.  A special child
// named "property" maps property names to values for each object.
Live.ToDictionary = function(path) {
  if (false && ++Live.count > 300)
    return {};

  path = path || [];

  Live.api.path = path;

  var result = {};
  var is_index = Live.indexed_types[Live.api.type];
  var result = is_index ? {} : Live.ToPropertyDictionary();

  var children = Live.api.children;
  // Unfortunately, in some cases Live.api.children doesn't have a list of
  // children and instead has the list ['No', 'children'] (a sort of
  // use/mention error. ;-) There are two such cases - objects that
  // legitimately have no children, and what I call indexed types whose
  // children have numeric names.  We detect these with getcount on the parent
  // node.
  if (children.length && children[children.length - 1] == "children")
    children = [];

  if (path.length) {
    var lastPath = path[path.length - 1];
    var childless = Live.childlessObjects[lastPath];

    if (childless) {
      children = [];
    } else {
      var newPath = path.slice(0, path.length - 1);
      Live.api.path = newPath;
      var noGetcount = Live.noGetcount[lastPath];
      var childCount = (childless || noGetcount) ? 0 : Live.api.getcount(lastPath);

      if (childCount > 0) {
        children = [];
        for (var i = 0; i < childCount; ++i)
          children.push(i);
      }
    }
  }

  for (var i in children) {
    var child = children[i];
    if (child != 'canonical_parent' && child != lastPath)
      result[child] = Live.ToDictionary(path.concat([child]));
  }
  return result;
};

// These are types whose children have integer names.
Live.indexed_types = {'list': 1, 'tuple': 1 };

Live.noGetcount = {
  this_device: 1,
  live_app: 1,
  live_set: 1,
};

Live.childlessObjects = {
  canonical_parent: 1,
  control_surfaces: 1,
  clip: 1,
  highlighted_clip_slot: 1,
  detail_clip: 1,
  master_track: 1,
  selected_device: 1,
};

#endif  // __TO_DICTIONARY
