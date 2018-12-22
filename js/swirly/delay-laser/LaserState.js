#pragma once

#include "swirly/laser/Laser.js"
#include "swirly/delay-laser/Constants.js"
#include "swirly/midi/NoteNames.js"
#include "swirly/util/FileReader.js"
#include "swirly/util/logging.js"
#include "swirly/util/truncate_writer.js"


Laser.LaserState = function(lasers) {
    var isRecording = false,
        presets = {};

    this.setRecording = function(r) {
        isRecording = !!r;
    };

    this.getState = function() {
        var state = [];
        for (var i = 0; i < Laser.LASER_COUNT; ++i)
            state.push(lasers[i].getState());

        return state;
    };

    this.setState = function(state) {
        for (var i = 0; i < Laser.LASER_COUNT; ++i)
            lasers[i].setState(state[i]);
    };

    function write(file) {
        file.write(JSON.stringify(presets));
    }

    this.retrieve = function(key) {
        var state = presets[key];

        if (isRecording) {
            // Save the current setting
            print(state ? 'Saving' : 'Replacing', key, Midi.noteToName(key));
            presets[key] = getState();
            Util.TruncateWriter(write, Laser.PRESET_FILE);

        } else if (state) {
            setState(state);

        } else {
            print('No value stored for key', key, Midi.noteToName(key));
        }
    };
};
