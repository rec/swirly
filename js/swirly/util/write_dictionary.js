#ifndef __WRITE_DICTIONARY__
#define __WRITE_DICTIONARY__

#include "swirly/util/util.js"

// Write a dictionary to a file.
Util.WriteDictionary = function(data, file, indent) {
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

    var is_array = data instanceof Array;
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

      Util.WriteDictionary(data[i], file, indent + '  ');

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

#endif  // __WRITE_DICTIONARY__
