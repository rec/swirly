#include "swirly/playback/swirly_time.js"

Testing.TestFunction(function() {
  var swirly = new SwirlyTime(2000, 3, 5, 0.5);
  swirly.Outlet = Testing.Outlet;
  Testing.ExpectFunction('SwirlyTime.Start', swirly.Start, swirly, [],
                         [["cc", 1],
                          ["channel", 0],
                          ["line", 127],
                          ["line", 0, 20001],
                          ["seq", "start", -1],
                          ["seq", "tick"],
                          ["delay", "bang"]],
                         true);

  Testing.ExpectFunction('SwirlyTime.Timer', swirly.Timer, swirly, [5000],
                         [["delay", 20.602284273146683]], true);
});

