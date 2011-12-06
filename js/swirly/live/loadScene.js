#ifndef __LOADSCENE
#define __LOADSCENE

#include "swirly/live/live.js"

Live.loadScene = function(name) {
  Live.api.path = 'live_set';
  var sceneCount = Live.api.getcount('scenes');
  for (var i = 0; i < sceneCount; ++i) {
    Live.api.path = 'live_set scenes ' + i;
    if (i == name || Live.api.get('name') == name) {
      Live.api.call('fire');
      return;
    }
  }
  post('ERROR: no scene', name);
};

#endif  // __LOADSCENE
