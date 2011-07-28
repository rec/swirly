#ifndef __SWIRLY_LIVE_TRANSLATE_PATH
#define __SWIRLY_LIVE_TRANSLATE_PATH

#include "swirly/live/live.js"

// If a live path includes children, you have to refer to them by index number.
// This means that if you happen to rearrange the order of your tracks in a Live
// project, you have to go into your program and change all those indexes.
//
// Live.TranslatePath works around this by allowing text names for children in
// live paths.  When TranslatePath encounters a child name that isn't an adult,
// it searches through the children to find one whose 'name' property is the
// same as the given string.
//
// Due to my current lack of understanding of what constitutes a valid Live
// path, I make some simplifying assumptions - that paths alternate name/child
// pairs, except for "master_track" which has no child associated with it.
//
// Once I understand the Live Object Model in Javascript better, I'll improve
// these tools.
//
// The argument "path" can be either a list of strings, or a single string with
// spaces separating the segments of the path - however, in the second case you
// cannot represent named segments with spaces in them (which are quite common).

Live.TranslatePath = function(path) {
  path = path || [];
  if (typeof(path) == 'string')
    path = path.split(' ');

  var partialPath = [path.shift()];
  for (var i = 0; i < path.length; i += 2) {
    Live.api.path = partialPath;

    var part = path[i];
    partialPath.push(part);
    if (part == 'master_track') {
      i--;
      continue;
    }

    var index = path[i + 1];
    var children = Live.api.getcount(part);

    if (typeof(index) != 'number' && parseInt(index) != index) {
      for (var j = 0; ; ++j) {
        if (j >= children) {
          post("ERROR: Didn't find child", part, index, children, '\n');
          return [];
        }

        Live.api.path = partialPath.concat([j]);
        if (Live.api.get('name') == index) {
          index = j;
          break;
        }
      }
    }
    partialPath.push(index);
  }
  return partialPath;
};

#endif  // __SWIRLY_LIVE_TRANSLATE_PATH
