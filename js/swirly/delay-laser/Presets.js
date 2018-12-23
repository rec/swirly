#pragma once

#include "swirly/laser/Laser.js"
#include "swirly/delay-laser/Constants.js"
#include "swirly/midi/NoteNames.js"
#include "swirly/util/FileReader.js"
#include "swirly/util/logging.js"
#include "swirly/util/truncate_writer.js"


Laser.Presets = function(lasers) {
    var isRecording = false,
        presets = {},
        active = new Array(Laser.LASER_COUNT);

    try {
        presets = FileReader.readJson(Laser.PRESET_FILE);
    } catch(_) {}

    function forEachActiveLaser(callback) {
        for (var i = 0; i < Laser.LASER_COUNT; ++i)
            active[i] && callback(lasers[i], i);
    }

    function getState() {
        var laserState = {};
        forEachActiveLaser(function(laser, i) {
            laserState[i] = laser.getState();
        });
        return {active: active.slice(), lasers: laserState};
    };

    function setState(state) {
        active = state.active.slice();
        forEachActiveLaser(function(laser, i) {
            laser.setState(state.lasers[i]);
        });
    };

    this.setRecording = function(r) {
        isRecording = !!r;
    };

    this.setActive = function(control, value) {
        active[control] = !!value;
    };

    this.action = function(key) {
        var state = presets[key];

        if (isRecording) {
            // Save the current setting
            print(state ? 'Saving' : 'Replacing', key, Midi.noteToName(key));
            presets[key] = getState();
            Util.WriteTruncated(Laser.PRESET_FILE, function(file) {
                file.write(JSON.stringify(presets));
            });

        } else if (state) {
            setState(state);

        } else {
            print('No value stored for key', key, Midi.noteToName(key));
        }
    };
};
