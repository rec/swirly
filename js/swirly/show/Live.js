#pragma once

#include "swirly/live/Environment.js"
#include "swirly/object/table.js"

Live.makePreset = function(show, desc, environment) {

};

Live.makePresets = function(show, desc, environment) {
    return applyEachObj(desc, function(item) {
        Live.makePreset(show, item, environment);
    });
};

Live.make = function(show) {
    var live = show.json.live,
        environment =  Live.Environment(live.environment);

    return {
        presets: Live.makePresets(show, live.presets, environment),
        environment: environment,
        live: live,
    };
};
