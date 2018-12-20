#pragma once

#include "swirly/laser/Laser.js"
#include "swirly/delay-laser/DialTimes.js"
#include "swirly/delay-laser/LaserClass.js"
#include "swirly/max/findObjects.js"
#include "swirly/midi/NoteNames.js"
#include "swirly/util/FileReader.js"
#include "swirly/util/logging.js"
#include "swirly/util/truncate_writer.js"

Laser.MIDIIN = 'BCF2000 Port 1';
Laser.MIDIOUT = Laser.MIDIIN;
Laser.NOTEIN = 'Akai';
Laser.DMX = '/dev/cu.usbserial-6AYL2V8Z';
Laser.PRESET_FILE = '/development/swirly/js/swirly/delay-laser/presets.json'
Laser.FADERS = [
    'zoom', 'xrot', 'yrot', 'zrot', 'hpos', 'vpos', 'color', 'pattern'];
Laser.FADER_HAS_LFO = [
    true, true, true, true, true, true, false, false];

Laser.LASER_COUNT = 6;
Laser.LFO_COUNT = 6;

Laser.BCF2000 = {
    button1: 65,
    button2: 73,
    button3: 89,
    click: 49,  // What is this?
    encoder: 1,
    encoder_click: 33,
    fader: 81,
};

Laser.DISPLAY_OBJECTS = ['display1', 'display2', 'display3', 'display4',
                         'display5', 'display6'];
Laser.MIDI_OBJECTS = ['ctlout', 'midiin', 'notein'];
Laser.TOGGLE_OBJECTS = ['left_right', 'up_down'];
Laser.OTHER_OBJECTS = ['times', 'save'];
Laser.MAX_OBJECTS =
    Laser.DISPLAY_OBJECTS +
    Laser.MIDI_OBJECTS +
    Laser.TOGGLE_OBJECTS +
    Laser.OTHER_OBJECTS +
    Laser.FADERS;

Laser.DelayLaser = function(minTime, maxTime) {
    var max = Max.findByName(Laser.MAX_OBJECTS),
        dialTimes = Laser.dialTimes(minTime, maxTime),
        lasers = [],
        lfo = [],
        spaceBarPressed = false,
        presets = {};

    // We are using these max objects:
    //     ctlout, displays, dmxusbpro, faders, midiin, notein, times
    //     up_down, left_right, save

    function reset() {
        for (var i = 0; i < Laser.LFO_COUNT; ++i)
            lfo.push(false);

        Dict.forEach(Laser.FADERS, function(fader, i) {
            i = parseInt(i);
            max.faders.message(fader, 0);
            if (i < Laser.LFO_COUNT)
                max.faders.message(fader, 'lfo', 0);
            else
                max.faders.message(fader, 'name', Laser.names[fader].invert[0]);

            if (i < Laser.LASER_COUNT)
                lasers[i].reset();

            for (var c in Laser.BCF2000)
                max.ctlout.message(Laser.BCF2000[c] + i, 0);
        });
    }

    // Functions that handle different types of continuous controllers.
    function encoder(control, value) {
        if (control < Laser.LASER_COUNT)
            lasers[control].setTime(dialTimes[value]);
    }

    function button1(control, value) {
        if (control < Laser.LASER_COUNT)
            lasers[control].setBlackout(value);
    }

    function button2(control, value) {
        if (Laser.FADER_HAS_LFO[control]) {
            var sliderName = Laser.FADERS[control];
            lfo[control] = !!value;

            max.faders.message(sliderName, 'lfo', value);
            max.faders.message(sliderName, 64);
            max.ctlout.message(Laser.BCF2000.fader + control, 64);
        }
    }

    function button3(control, value) {
        if (control == 0)
            allOff();
        else if (control == 1)
            reset();
    }

    function click(control, value) {
        print('click', control, value);
    }

    function fader(control, value) {
        var sliderName = Laser.FADERS[control],
            channel = Laser.channels[sliderName];
        max.faders.message(sliderName, value);

        if (Laser.FADER_HAS_LFO[control]) {
            if (lfo[control])
                value += 128;
        } else {
            var names = Laser.names[sliderName],
                index = names.index(value),
                name = names.invert[index];
            max.faders.message(sliderName, 'name', name);
            value = index;
        }
        for (var i in lasers)
            lasers[i].setChannelValue(channel, value);
    }

    var controllers = {
        button1: button1,
        button2: button2,
        button3: button3,
        click: click,
        encoder: encoder,
        fader: fader,
    };

    function serialize() {
        var data = [];
        for (var i = 0; i < LASER_COUNT; ++i)
            data.push(lasers[i].serialize());
        return data;
    }

    function deserialize(data) {
        for (var i = 0; i < LASER_COUNT; ++i)
            lasers[i].deserialize(data[i])
    }

    function allOff() {
        for (var i = 0; i < Laser.LASER_COUNT; ++i) {
            lasers[i].setBlackout(0, true);
            max.ctlout.message(Laser.BCF2000.button1 + i, 0);
        }
    }

    function cc(control, value) {
        for (var name in Laser.BCF2000) {
            var c = Laser.BCF2000[name];
            if (c <= control && control < c + 8)
                return controllers[name](control - c, value);
        }

        print('Do not understand controller', control, value);
    }

    function spacebar(isPressed) {
        spaceBarPressed = isPressed;
    }

    function write(file) {
        file.write(JSON.stringify(presets));
    }

    function notes(key, velocity) {
        if (velocity) {
            if (spaceBarPressed) {
                // Store the current setting.
                presets[key] = serialize();
                Util.TruncateWriter(write, Laser.PRESET_FILE);
            } else {
                var value = presets[key];
                if (value)
                    deserialize(value);
                else
                    print('No value stored for key', key, Midi.noteToName(key));
            }
        }
    }

    try {
        presets = FileReader.readJson(Laser.PRESET_FILE);
    } catch(_) {
    }

    max.dmxusbpro.message(Laser.DMX);
    max.midiin.message(Laser.MIDIIN);
    max.ctlout.message(Laser.MIDIOUT);
    max.notein.message(Laser.NOTEIN);

    for (var i = 0; i < Laser.LASER_COUNT; ++i)
        lasers.push(new Laser.Class(max, i, maxTime));

    reset();

    return {
        cc: cc,
        allOff: allOff,
        notes: notes,
        spacebar: spacebar,
    };
};
