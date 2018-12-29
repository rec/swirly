#pragma once

#include "swirly/laser/Laser.js"
#include "swirly/delay-laser/Constants.js"
#include "swirly/midi/NoteNames.js"
#include "swirly/util/FileReader.js"
#include "swirly/util/logging.js"
#include "swirly/util/truncate_writer.js"


Laser.Presets = function(lasers) {
    try {
        this.presets = FileReader.readJson(Laser.PRESET_FILE);
    } catch(_) {
        this.presets = {};
    }

    var self = this,
        active = new Array(Laser.LASER_COUNT);

    function getState() {
        var activeLasers = {};
        for (var i = 0; i < Laser.LASER_COUNT; ++i) {
            if (active[i])
                activeLasers[i] = laser.getState();
        }
        return activeLasers;
    };

    this.setActive = function(control, value) {
        active[control] = !!value;
    };

    this.write = function(note) {
        print(state ? 'Saving' : 'Replacing', key, Midi.noteToName(note));
        self.presets[key] = getState();
        Util.WriteTruncated(Laser.PRESET_FILE, function(file) {
            file.write(JSON.stringify(self.presets));
        });
    };
};
