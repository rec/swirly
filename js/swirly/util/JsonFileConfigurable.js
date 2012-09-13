#ifdef __SWIRLY_JSON_FILE_CONFIGURABLE__
#define __SWIRLY_JSON_FILE_CONFIGURABLE__

#include "swirly/util/util.js"

Util.JsonFileConfigurable = function(outs_) {
  var table_ = {};
  var tableFilename_ = '';

  self.text = function(name, reload) {
    var table = name && name.length && FileReader.ReadJson(name);
    outs_.error(!table);
    if (table) {
      table_ = table;
      tableFilename_ = filename;
    } else {
      Postln("Couldn't read", name);
    }
  };

  self.reload = function() {
    self.text(tableFilename_, true);
  };
};

#endif
