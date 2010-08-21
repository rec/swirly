#include "swirly/live/panner.js"

Testing.TestFunction(function() {
  var panner = new Live.Panner();
  panner.Outlet = function(_) {
    Testing.results.push(arrayfromargs(arguments));
  };

  Testing.ExpectFunction('Live.Panner', panner.Init, panner, [[-1, 0, 1]],
                         [], true);

  Testing.ExpectFunction('Live.Panner', panner.Next, panner, [],
                         [[0, 'cc', 10, 0]], true);

  Testing.ExpectFunction('Live.Panner', panner.Next, panner, [],
                         [[0, 'cc', 10, 64]], true);

  Testing.ExpectFunction('Live.Panner', panner.Next, panner, [],
                         [[0, 'cc', 10, 127]], true);

  Testing.ExpectFunction('Live.Panner', panner.Next, panner, [],
                         [[0, 'cc', 10, 0]], true);

});
