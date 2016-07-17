#pragma once

#include "swirly/lighter/Lighter.js"
#include "swirly/object/Dict.js"
#include "swirly/util/Range.js"

Lighter.makeMappers = function(desc) {
    var mappers = {},
        valueNameTable = desc.value_names || {};

    for (var channel in desc.channels) {
        var valueNames = valueNameTable[channelName];

        function add(name, valueFunc) {
            mappers[name] = {name: name, channel: channel, value: valueFunc};
        };

        function identity(x) {
            return x;
        }

        function byName(value) {
            var v = valueNames[value];
            return v !== undefined ? v : value;
        };

        var channelName = desc.channels[channels];
        add(channelName, valueNames ? byName : identity);

        forEach(desc.splits || {}, function(range, split) {
            var name = channelName + '_' + split,
                splitRange = new Range(range[0], range[1]),
                valueFunc = Range.DMX.jsonConverter(splitRange);
            add(name, valueFunc);
        });
    }
    return mappers;
};
