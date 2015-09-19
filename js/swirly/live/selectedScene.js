#ifndef __SELECTEDSCENE
#define __SELECTEDSCENE

#include "swirly/util/apply_deprecated.js"
#include "swirly/live/live.js"

Live.patcher = this.patcher;

Live.selectedScene = function() {
  Live.api.path = 'live_set view selected_scene';
  return Live.api.get('name');
};

Live.selectedSceneMapper = function(patcher, map) {
  print('Live.selectedSceneMapper');
  function callback() {
    var scene = Live.selectedScene();
    print('scene', scene);
    Functional.ApplyAll(Functional.Apply(map, scene));
  };

  return new LiveAPI(patcher, callback, 'live_set view');
};

#endif  // __SELECTEDSCENE
