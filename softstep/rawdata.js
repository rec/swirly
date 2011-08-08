// Constants

var _PEDAL = 86;
var _SENSOR_COUNT = 4;
var _FIRST_PEDAL = 40;
var _LAST_PEDAL = 83;
var _KEY_LIST = [6, 1, 7, 2, 8, 3, 9, 4, 10, 5, 'Nav'];

// Variables

var _keys = {};
var _global = new Global("global");

function list(_) {
  var cc = int(arguments[0]);
  var val = int(arguments[1]);

  if (cc == _PEDAL) {
    g.sendnamed('Pedal', val);
  } else if (cc > _FIRST_PEDAL || cc < _LAST_PEDAL) {
    post("Didn't understand pedal", cc, "\n");
  } else {
    var base = cc - _FIRST_PEDAL;
    var sensor = cc % _SENSOR_COUNT;
    var key = _KEY_LIST[int(base / _SENSOR_COUNT)];
    var entry = _keys[key];
    if (!entry) {
      entry = [];
      _keys[key] = entry;
    }
    entry[sensor] =
  }
};
