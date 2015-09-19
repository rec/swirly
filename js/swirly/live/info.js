#ifndef __SWIRLY_LIVE_INFO
#define __SWIRLY_LIVE_INFO

#include "swirly/live/live.js"

// Parse an info record gotten from LiveAPI.info into a dictionary.
Live.Info = function(description) {
  // Get rid of bizarre leading and trailing quotes.
  description = (description || Live.api.info).replace(/^"+|"+$/g, '');

  var lines = description.split('\n');
  var info = {};

  function Split(str) {
    var pos = str.indexOf(' ');
    return (pos == -1) ? [str] : [str.slice(0, pos), str.slice(pos + 1)];
  };

  for (var i in lines) {
    var line = lines[i];
    if (!line)
      continue;
    var parts = Split(line);
    var command = parts[0];
    var value = parts[1];
    if (command == 'id' || command == 'description' || command == 'type') {
      info[command] = value;

    } else if (command != 'done') {
      if (!value) {
        print('No value for command', command);
        continue;
      }
      var variable = Split(value);
      var table = {};
      if (command in info)
        table = info[command];
      else
        info[command] = table;
      table[variable[0]] = variable[1] || true;
    }
  }
  return info;
};

#endif  // __SWIRLY_LIVE_INFO
