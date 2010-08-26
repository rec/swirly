#include "swirly/playback/swirly_time.js"

Testing.TestFunction(function() {
  var swirly = new SwirlyTime(2000, 3, 5, 0.5);
  swirly.Outlet = Testing.Outlet;
  Testing.ExpectFunction('SwirlyTime', swirly.Start, swirly, [],
                         [["cc", 1],
                          ["channel", 0],
                          ["line", 127],
                          ["line", 0, 20001],
                          ["seq", "start", -1],
                          ["seq", "tick"],
                          ["delay", "bang"]],
                         true);
});

