#ifdef __SWIRLY_JSON_FILE_CONFIGURABLE__
#define __SWIRLY_JSON_FILE_CONFIGURABLE__

#include "swirly/util/util.js"

Util.JsonFileConfigurable = function(outs) {
    var table = {},
        tableFilename = '';

    this.text = function(name, reload) {
        var table = name && name.length && FileReader.ReadJson(name);
        outs.error(!table);
        if (table) {
            table = table;
            tableFilename_ = filename;
        } else {
            Postln("Couldn't read", name);
        }
    };

    this.reload = function() {
        self.text(tableFilename, true);
    };
};

#endif
