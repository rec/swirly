#pragma once

#include "swirly/util/util.js"

// Open a file, use a function to write to it, truncate and close it.
// If you don't do this, you'll have crap at the end of your file.  :-/
Util.WriteTruncated = function(filename, file_processor) {
    var file = new File(filename, 'write');
    try {
        file_processor(file);
    } finally {
        file.eof = file.position;
        file.close();
    }
};

// Deprecated older version with parameters reversed
Util.TruncateWriter = function(file_processor, filename) {
    return Util.WriteTruncated(filename, file_processor);
};
