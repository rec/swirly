#pragma once

#include "swirly/show/Address.js"

Show.applyPrefix = '@';
Show.scenePrefix = '$';

Show.expandCommand = function(json, commandTable) {
    /** expandCommand doesn't happen during a performance, but should only be
        called when you read a new data file, so we can afford to be a little
        luxurious. */

    /** Matches a string that starts with exactly one of the prefix (so you
        can escape prefix characters by repeating them). */
    function hasPrefix(name, prefix) {
        return name && name.length > 1 &&
            name[0] === prefix && name[1] !== prefix;
    };

    function perhapsApply(name, args) {
        if (hasPrefix(name, Show.applyPrefix)) {
            var command = Show.getFromAddress(commandTable, name.slice(1));
            return command.apply(this, args || []);
        }
    };

    if (json instanceof Array) {
        var result = perhapsApply(json[0], json.slice(1));
        if (result !== undefined)
            return result;

        result = [];
        for (var i = 0; i < json.length; ++i)
            result.push(show.expandCommand(json[i], commandTable));
        return result;
    }

    if (json instanceof Object) {
        var result = {};
        for (var i in json)
            result[i] = show.expandCommand(json[i]);
        return result;
    }

    if (typeof(json) === 'string') {
        if (hasPrefix(json, Show.evaluatePrefix)
            return perhapsApply(json);
        if (ch === '$') {
            var address = Show.splitAddress(json.slice(1));
            return expand(['*scene'] + address);
        }
    }

    return json;
};
