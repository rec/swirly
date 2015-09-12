#include "swirly/scene/scene.js"

Testing.TestFunction(function() {
  var from = {'state': {'level': 0}, 'time': 0};
  var to = {'state': {'level': 10}, 'time': 5};

  function doTest(time, level) {
    Testing.ExpectFunction('Scene.Apply', Scene.Apply, this,
                           [from, to, time], {'level': level});
  };

  doTest(2, 4);
  doTest(0, 0);
  doTest(5, 10);

  from.time = 5;
  to.time = 10;

  doTest(7, 4);
  doTest(5, 0);
  doTest(10, 10);
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
  var from = {'state': {'level': 0}, 'time': 0};
  var to = {'state': {'level': 2}, 'time': 12};
  var state = from.state;

  Testing.ExpectFunction('Scene.NextChange', Scene.NextChange, this,
                         [state, from, to, 0], 6);
});

Testing.TestFunction(function() {
  var from = {'state': {'level': 5}, 'time': 0};
  var to = {'state': {'level': 8}, 'time': 12};
  var state = from.state;

  Testing.ExpectFunction('Scene.NextChange', Scene.NextChange, this,
                         [state, from, to, 0], 4);
});

Testing.TestFunction(function() {
  var from = {'state': {'level': 5}, 'time': 0};
  var to = {'state': {'level': 8}, 'time': 12};
  var state = {'level': 6};

  Testing.ExpectFunction('Scene.NextChange', Scene.NextChange, this,
                         [state, from, to, 5], 3);
});

Testing.TestFunction(function() {
  var from = {'state': {'level': 0, 'level2': 5}, 'time': 0};
  var to = {'state': {'level': 2, 'level2': 8}, 'time': 12};
  var state = from.state;

  Testing.ExpectFunction('Scene.NextChange', Scene.NextChange, this,
                         [state, from, to, 0], 4);

  state = {'level': 0, 'level2': 6};
  Testing.ExpectFunction('Scene.NextChange', Scene.NextChange, this,
                         [state, from, to, 5], 1);
});

Testing.TestFunction(function() {
  var from = {'state': {'level': 0, 'level2': 8}, 'time': 0};
  var to = {'state': {'level': 2, 'level2': 5}, 'time': 12};
  var state = from.state;

  Testing.ExpectFunction('Scene.NextChange', Scene.NextChange, this,
                         [state, from, to, 0], 4);

  state = {'level': 0, 'level2': 7};
  Testing.ExpectFunction('Scene.NextChange', Scene.NextChange, this,
                         [state, from, to, 5], 1);
});

