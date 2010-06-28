#include "swirly/scene/fader.js"

Testing.TestFunction(function() {
  var fader = new Scene.Fader();
  fader.Outlet = function(_) {
    Testing.results.push(arrayfromargs(arguments));
  };

  Testing.ExpectFunction('fader.DMX', fader.DMX, fader, [3, 0],
                         [['dmx', 3, 0]], true);
});
