autowatch = 1;

#include "swirly/max/inlets.js"
#include "swirly/max/outlets.js"
#include "swirly/midi/nrpn.js"
#include "swirly/util/print.js"

var _nrpn = new Midi.Nrpn.Outputer();
var _parameter = 0;

Max.SetOutlets(['controller', 'Controller data representing NRPNs']);

function _receiveData(data) {
  if (data.length != 1) {
    post('Bad data length', data.length, '\n');
    Postln(data);
    return;
  }
  var results = _nrpn.Output(_parameter, data[0]);
  for (var i in results)
    Max.ListOut.controller(results[i]);
};

function _receiveParameter(parameter) {
  var len = parameter.length;
  if (len == 0 || len > 2) {
    post('Bad parameter length', len, '\n');
    Postln(parameter);
    return;
  }
  _parameter = parameter[0];
  if (len == 2)
    _receiveData([parameter[1]]);
};

var _btw = ' between 0 and ' + (Midi.Nrpn.MAX - 1);

Max.SetInlets(['parameter', _receiveParameter, 'parameter number' + _btw],
              ['data', _receiveData, 'Data' + _btw]);

post('Compiled nrpn_out.js on ' + new Date().toString(), '\n');
