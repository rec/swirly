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

  Test('Init', [], [['timer']]);

  Test('DMX', [3, 0], [['dmx', 3, 0]]);
  Test('Blackout', [], [['dmx', 0, 0]]);

  var cat = {1: 10, 5: 12};
  var dog = {1: 5, 3: 100};
  fader.scenes = {'cat': cat, 'dog': dog};

  Test('Update', [], []);
  Test('Update', [cat], [['dmx', '1', 10], ['dmx', '5', 12]]);
  Test('Update', [cat], []);
  Test('Update', [dog], [['dmx', '1', 5], ['dmx', '3', 100]]);

  fader.state = {};
  Test('Jump', [cat], [['dmx', '1', 10], ['dmx', '5', 12]]);
  Test('Jump', [dog], [['dmx', '5', 0], ['dmx', '1', 5], ['dmx', '3', 100]]);

  Test('Timer', [0], []);

  fader.state = {};
  var jump = fader.AbstractScene('Jump');

  Testing.ExpectFunction('Fader.AbstractScene', jump, fader, ['cat'],
                         [['dmx', '1', 10], ['dmx', '5', 12]], true);

  Testing.ExpectFunction('Fader.AbstractScene', jump, fader, ['dog'],
                         [['dmx', '5', 0], ['dmx', '1', 5], ['dmx', '3', 100]],
                         true);


});
