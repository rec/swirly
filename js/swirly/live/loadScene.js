#ifndef __LOADSCENE
#define __LOADSCENE

#include "swirly/live/Property.js"

Live.LoadScene = function(name) {
  Live.api.path = 'live_set';
  var sceneCount = Live.api.getcount('scenes');
  for (var i = 0; i < sceneCount; ++i) {
    Live.api.path = 'live_set scenes ' + i;
    if (i == name || Live.api.get('name') == name) {
      Live.api.call('fire');
      return;
    }
  }
  print('ERROR: no scene', name);
};

// Go to the scene after the scene that contains the current clip.
Live.LoadNextScene = function() {
  return Live.LoadScene(1 + Live.GetProperty('clip')[0]);
};

#endif  // __LOADSCENE
