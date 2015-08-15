#pragma once

#include "swirly/live/Live.js"

/** Map Live types to Javascript types. */
Live.liveTypesToJSTypes = {
    bool: Boolean,
    int: Number,
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
        var name = parts[0],
            liveType = parts[1];
        props.property = props.property || {};
        props.property[name] = Live.liveTypesToJSTypes[liveType] ||
            function(x) { return x; };
    },
};

Live.parseInfo = function(info) {
    var props = {};
    info.split('\n').forEach(function(line) {
        var parts = line.split(' '),
            parser = Live.infoParsers[parts[0]];
        parser && parser(props, parts.slice(1));
    });

    return props;
};

Live.properties = function(liveObject) {
    var props = Live.parseInfo(liveObject.info),
        getter = Dict.getter(props, 'Property info.');

    function get(name) {
        return getter(name)(liveObject.get(name));
    };
    function set(name, value) {
        liveObject.set(name, getter(name)(value));
    };

    return {set: set, get: get};
};
