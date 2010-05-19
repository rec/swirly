#include "swirly/live/info.js"

Testing.TestFunction(function() {
  var testinfo =
    '"type Device\n' +
    'description This class represents a MIDI or Audio DSP-Device in Live.\n' +
    'children parameters DeviceParameter\n' +
    'child canonical_parent Track\n' +
    'property class_name unicode\n' +
    'property name unicode\n' +
    'function store_chosen_bank\n' +
    'done"';

  var result = {
    'type': 'Device',

    'description': 'This class represents a MIDI or Audio DSP-Device in Live.',

    'children': {
      'parameters': 'DeviceParameter',
    },

    'child': {
      'canonical_parent': 'Track',
    },

    'property': {
      'class_name': 'unicode',
      'name': 'unicode',
    },

    'function': {
      'store_chosen_bank': true,
    }
  }
  Testing.ExpectFunction('live/info', Live.Info, this, [testinfo], result);
});
