#pragma once

#include "swirly/live/Live.js"

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
    id: function(props, parts) {
        props['id'] = parts[0];
    },

    type: function(props, parts) {
        props['type'] = parts[0];
    },

    description: function(props, parts) {
        props['description'] = parts.join(' ');
    },

    property: function(props, parts) {
        props.property = props.property || {};
        props.property[parts[0]] = parts[1];
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

Live.propertyInfo = function(info) {
    var properties = {};
    info.split('\n').forEach(function(line) {
        var parts = line.split(' '),
            parser = Live.infoParsers[parts[0]];
        parser && parser(properties, parts.slice(1));
    });


};
