#pragma once

#include "swirly/util/util.js"

Util.pickup = function(maxjump, callback) {
    maxjump = maxjump || 1;

    // A table of name: [lastSentValue, lastReceivedValue];
    var table = {},
        enabled = true;

    function process(name, value) {
        var oldEntry = table[name];
        if (oldEntry === undefined) {
            table[name] = [value, value];
        } else {
            oldEntry[1] = value;  // last received.
            if (enabled && Math.abs(value - oldEntry[0]) >= maxjump)
                return;
            oldEntry[0] = value;
        }
        callback(name, value);
    };

    function clear(name) {
        if (name)
            delete table[name];
        else
            table = {};
    }

    function enable(e) {
        if (enabled == e)
            return;
        enabled = e;
        if (enabled)
            return;

    }

    return {process: process, clear: clear, enable: enable};
};
