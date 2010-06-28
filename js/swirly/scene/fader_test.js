#include "swirly/scene/fader.js"

Testing.TestFunction(function() {
  var fader = new Scene.Fader();
  fader.Outlet = function(_) {
    Testing.results.push(arrayfromargs(arguments));
  };

  function Test(method, args, expected) {
    Testing.ExpectFunction('Fader.' + method, fader[method],
                           fader, args, expected, true);
  }

  Test('DMX', [3, 0], [['dmx', 3, 0]]);
  Test('Blackout', [], [['dmx', 0, 0]]);

  Test('Update', [], []);
  Test('Update', [{1: 10, 5: 12}], [['dmx', "1", 10], ['dmx', "5", 12]]);
  Test('Update', [{1: 10, 5: 12}], []);
});
