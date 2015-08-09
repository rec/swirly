#pragma once

#include "swirly/live/live.js"

/** Map Live types to Javascript types. */
Live.liveTypesToJSTypes = {
    bool: Boolean,
    int: Number,
    unicode: String,
    StringVector: function(x) { return x; },
};

/** Parse the information returned from a Live Object's info and return as a
 * dictionary. */
Live.infoParsers = {
    id: function(r, parts) {
        r['id'] = parts[0];
    },

    type: function(r, parts) {
        r['type'] = parts[0];
    },

    description: function(r, parts) {
        r['description'] = parts.join(' ');
    },

    property: function(r, parts) {
        r.property = r.property || {};
        r.property[parts[0]] = parts[1];
    },
};

Live.parseInfo = function(info) {
    var result = {};
    info.split('\n').forEach(function(line) {
        var parts = line.split(' '),
            parser = Live.infoParsers[parts[0]];
        parser && parser(result, parts.slice(1));
    });
    return result;
};
