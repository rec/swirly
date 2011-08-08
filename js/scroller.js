autowatch = 1;

#include "swirly/softstep/scroll.js"
#include "swirly/midi/midi.js"

var _scroller = new Softstep.Scroller();
var _period = 500;

function start(_) {
  _scroller.Start({render: MIDI.Outlet(0),
                   message: '' + arguments[0],
                   period: _period});
};

function stop() {
  _scroller.Stop();
};

function period(x) {
  _period = _scroller.args.period = parseInt(x);
};

post('scroller v0 compiled.\n');