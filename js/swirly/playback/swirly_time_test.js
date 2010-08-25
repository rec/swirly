#include "swirly/playback/swirly_time.js"

Testing.TestFunction(function() {
  var swirly = new SwirlyTime(2000, 3, 5, 0.5);
  swirly.Outlet = Testing.Outlet();
  Testing.ExpectFunction('SwirlyTime', swirly.Start, swirly, [], [], true);
});

