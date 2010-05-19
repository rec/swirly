#ifndef __SWIRLY_UTIL_WRITE_JSON
#define __SWIRLY_UTIL_WRITE_JSON

#include "swirly/array/is.js"
#include "swirly/util/util.js"

// Write a JSON-like structure to a file or something that looks like a file
// (i.e. has methods writeline and writestring).
Util.WriteJSON = function(data, file, indent) {
  indent = indent || '';

  switch (typeof(data)) {
   case 'undefined':
    file.writestring('undefined');
    return;

   case 'string':
    file.writestring("'" + data + "'");
    return;

   case 'object':
    if (data === null) {
      file.writestring('null');
      return;
    }

    // Figure out if we fit the compound object on one line.
    var multiline = false;
    for (var i in data) {
      if (data[i] && typeof(data[i]) == 'object') {
        multiline = true;
        break;
      }
    }

    var is_array = Array.Is(data);
    var open = is_array ? '[' : '{';
    if (multiline)
      file.writeline(open);
    else
      file.writestring(open);

    for (var i in data) {
      if (multiline)
        file.writestring(indent + '  ');

      if (!is_array)
        file.writestring("'" + i + "'" + ': ');

      Util.WriteJSON(data[i], file, indent + '  ');

      if (!is_array || i < data.length - 1) {
        if (multiline)
          file.writeline(',');
        else
          file.writestring(', ');
      }
    };

    if (multiline)
      file.writestring(indent);
    file.writestring(is_array ? ']' : '}');
    return;

   default:
    file.writestring('' + data);
    return;
  }
};

#endif  // __SWIRLY_UTIL_WRITE_JSON
