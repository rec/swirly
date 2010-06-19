#include "swirly/scene/scene.js"

Testing.TestFunction(function() {
  var from = {'level': 0, 'time': 0};
  var to = {'level': 10, 'time': 5};

  function doTest(inter, x, y) {
    Testing.ExpectFunction('Scene.Interpolate', Scene.Interpolate, this,
                           [from, to, x, 'time', 'level', inter], y);
  };

  doTest(Scene.Identity, 2, 4);
});
