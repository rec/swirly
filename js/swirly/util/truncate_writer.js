#pragma once

#include "swirly/util/util.js"

// Open a file, use a function to write to it, truncate and close it.
Util.TruncateWriter = function(file_processor, filename) {
  var file = new File(filename, 'write');
  try {
    file_processor(file);
  } finally {
    file.eof = file.position;
    file.close();
  }
};
