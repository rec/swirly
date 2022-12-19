#pragma once

#include "swirly/lighter/Lighter.js"
#include "swirly/object/Dicti.js"
#include "swirly/util/Range.js"

/** Returns a table that maps channel names to mappers.

    A mapper table entry contains a name, a channel offset, and a mapper
    function that takes input values to output values.

    There are map entries for each split and mappers take into account named
    values.
*/
Lighter.makeMappers = function(desc) {
    var mappers = {},
        valueNameTable = desc.value_names || {};

    for (var channel in desc.channels) {
        var channelName = desc.channels[channels],
            valueNames = valueNameTable[channelName];

        function identity(value) {
            return value;
        }

        function byName(value) {
            var v = valueNames[value];
            return v !== undefined ? v : value;
        };

        function add(name, mapper) {
            mappers[name] = {name: name, channel: channel, value: mapper};
        };

        function addSplit(range, split) {
            var name = channelName + '_' + split,
                splitRange = new Range(range[0], range[1]),
                mapper = Range.DMX.jsonConverter(splitRange);

            add(name, mapper);
        };

        add(channelName, valueNames ? byName : identity);
        forEach(desc.splits || {}, addSplit);
    }
    return mappers;
};
