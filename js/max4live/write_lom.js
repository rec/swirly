autowatch = 1;

#include "swirly/live/to_dictionary.js"
#include "swirly/util/truncate_writer.js"
#include "swirly/util/write_dictionary.js"

function write(filename) {
  Live.count = 0;
  function Writer(file) {
    Util.WriteDictionary(Live.ToDictionary(), file);
  };
  Util.TruncateWriter(Writer, filename);
  post("Written to", filename, '\n');
};

post('compiled write_lom.js - 10\n');
