#pragma once

#include "swirly/util/truncate_writer.js"
#include "swirly/util/FileReader.js"

var JsonFile = {
    read: function(filename, dflt) {
        try {
            return JsonFile.read(filename);
        } catch(_) {
            print("Couldn't open file", filename);
            return dflt || {};
        }
    },

    write: function(filename, data) {
        Util.WriteTruncated(Laser.filename, function(file) {
            file.write(JSON.stringify(data));
        });
    }
};
