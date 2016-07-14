#pragma once

#include "swirly/max/findObjects.js"
#include "swirly/util/FileReader.js"

#include "swirly/lights/Bank.js"
#include "swirly/lights/Definition.js"
#include "swirly/show/ExpandJson.js"
#include "swirly/util/print.js"
#include "swirly/util/truncate_writer.js"
#include "swirly/util/Range.js"

var Lighter = {};

Lighter.DATA_ROOT = '/development/swirly/data';

Lighter.MIDI = {
    wx_in: 'UltraLite mk3 MIDI Port',
    wx_out: 'UltraLite mk3 MIDI Port',
    bfc_in: 'UltraLite mk3 MIDI Port', // TODO
};

Lighter.readJson = FileReader.jsonReader(Lighter.DATA_ROOT);

Lighter.nothing = function() {};

Lighter.Lighter = function() {
    var objects = Max.findByName();
    for (var m in Lighter.MIDI)
        objects[m].message(Lighter.MIDI[m]);

    function dmx_in(name, value) {
        value && name === 'append' && objects.dmx.message(value);
    };

    return {
        bfc:     Lighter.nothing,
        breath:  Lighter.nothing,
        dmx_in:  dmx_in,
        note:    Lighter.nothing,
        scene:   Lighter.nothing,
        Test:    Lighter.nothing,

        names: [
            ['note',   'Note in from WX'],
            ['breath', 'Breath CC from WX'],
            ['dmx_in', 'Menu output from DMX controller'],
            ['bfc',    'MIDI CC information from Behringer BFC'],
            ['scene',  'Select a specific scene'],
            ['test',   'Toggle between test mode and not.'],
        ],

        _lights: Lighter.readJson('lights/lights.json'),
        _objects: objects,
    };
};
