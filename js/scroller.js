autowatch = 1;

#include "swirly/softstep/scroll.js"
#include "swirly/midi/midi.js"

var _scroller = new Softstep.Scroller();

_scroller.args.render = MIDI.Outlet(0);
_scroller.args.message = 'test';

function start() {
  _scroller.Start();
};

function stop() {
  _scroller.Stop();
};

function message(x) {
  _scroller.args.message = '' + x;
};

function period(x) {
 _scroller.args.period = parseInt(x);
};

post('scroller v0 compiled.\n');