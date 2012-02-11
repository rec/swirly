#ifndef __SELECTEDSCENE
#define __SELECTEDSCENE

#include "swirly/functional/apply.js"
#include "swirly/live/live.js"

Live.patcher = this.patcher;

Live.selectedScene = function() {
  Live.api.path = 'live_set view selected_scene';
  return Live.api.get('name');
};

Live.selectedSceneMapper = function(patcher, map) {
  post('Live.selectedSceneMapper\n');
  function callback() {
    var scene = Live.selectedScene();
    post('scene', scene, '\n');
    Functional.ApplyAll(Functional.Apply(map, scene));
  };

  return new LiveAPI(patcher, callback, 'live_set view');
};

#endif  // __SELECTEDSCENE
