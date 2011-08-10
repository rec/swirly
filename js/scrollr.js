autowatch = 1;

#include "swirly/softstep/scroller.js"
#include "swirly/max/outlet.js"

var _scroller = new Softstep.Scroller(
  {execute: Max.OutletFunction(0),
   message: "*** Tom Swirly's Scrollr"}
);

function start() { _scroller.Start(); };
function stop() { _scroller.Stop(); };

function message(x) { _scroller.SetMessage('' + x); };
function period(x) { _scroller.SetPeriod(x); };

function forward(d) { _scroller.config.delta = 1; };
function reverse(d) { _scroller.config.delta = -1; };

post('scroller v0.4 compiled.\n');