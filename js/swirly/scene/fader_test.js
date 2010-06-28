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

  fader.scenes = {'cat': {1: 10, 5: 12}, 'dog': {1: 5, 3: 100}};

  Test('Update', [], []);
  Test('Update', [fader.scenes.cat], [['dmx', "1", 10], ['dmx', "5", 12]]);
  Test('Update', [fader.scenes.cat], []);
  Test('Update', [fader.scenes.dog], [['dmx', "1", 5], ['dmx', "3", 100]]);



});
