#ifndef __TRANSLATE_PATH
#define __TRANSLATE_PATH

#include "swirly/live/live.js"

Live.translatePath = function(path) {
  path = path || [];
  if (typeof(path) == 'string')
    path = path.split(' ');

  var partialPath = ['live_set'];

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
          post("Didn't find child", part, index, '\n');
          return null;
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

#endif  // __TRANSLATE_PATH
