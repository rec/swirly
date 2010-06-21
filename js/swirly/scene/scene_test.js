#include "swirly/scene/scene.js"

Testing.TestFunction(function() {
  var from = {'level': 0, 'time': 0};
  var to = {'level': 10, 'time': 5};

  function doTest(inter, x, y) {
    Testing.ExpectFunction('Scene.InterpolateState', Scene.Interpolate, this,
                           [from, to, x, 'time', inter], {'level': y});
  };

  doTest(Scene.Identity, 2, 4);
  doTest(Scene.Identity, 0, 0);
  doTest(Scene.Identity, 5, 10);

  from.time = 5;
  to.time = 10;

  doTest(Scene.Identity, 7, 4);
  doTest(Scene.Identity, 5, 0);
  doTest(Scene.Identity, 10, 10);
});

Testing.TestFunction(function() {
  function doTest(x, n) {
    Testing.ExpectClose('Scene.ExpLog', Scene.Exp(Scene.Log(x, n), n), x);
    Testing.ExpectClose('Scene.ExpLog', Scene.Log(Scene.Exp(x, n), n), x);
  };
  doTest(0, 10);
  doTest(1, 10);
  doTest(0.5, 10);

  doTest(0, 1);
  doTest(1, 1);
  doTest(0.5, 1);

  doTest(0, 512);
  doTest(1, 512);
  doTest(0.5, 512);
});

Testing.TestFunction(function() {
  var state = {'a': 1 / 512, 'b': 2.9 / 512};
  var changes = {'a': 1.5 / 512, 'b': 3 / 512};
  Scene.Update(state, changes);
  Testing.ExpectEqual('Scene.Update', state, {'a': 1 / 512, 'b': 3 / 512});
});
