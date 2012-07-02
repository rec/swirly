autowatch = 1;

#include "swirly/max/inlets.js"
#include "swirly/max/outlets.js"
#include "swirly/midi/nrpn.js"

var _nrpn = new Midi.Nrpn.Outputer();
var _parameter = 0;

Max.SetOutlets(['controller', 'Controller data representing NRPNs']);

function _receiveData(data) {
  var results = _nrpn.Output(data);
  for (var i in results)
    Max.ListOut.controller(results[i]);
};

Max.SetInlets(['parameter', function(p) { _parameter = p; },
               'Non-registered parameter between 0 and ' + Midi.Nrpn.MAX],

              ['data', _receiveData,
               'Data value between 0 and ' + Midi.Nrpn.MAX]);

post('Compiled nrpn_out.js on ' + new Date().toString(), '\n');
