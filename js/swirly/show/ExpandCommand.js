#pragma once

#include "swirly/show/Address.js"
#include "swirly/util/ForEach.js"

Show.executePrefix = '*';
Show.scenePrefix = '$';

/** Split off a show prefix from a string and return a dictionary with name and
    optional prefix element.  Handles the "escaping" case where a string starts
    with two prefixes.
*/
Show.splitPrefix = function(name) {
    if (name && name.length > 1) {
        var ch = name[0];
        if (ch === Show.executePrefix || ch === Show.scenePrefix) {
            var result = {name: name.slice(1)};
            if (name[1] !== ch)
                result.prefix = ch;
            return result;
        }
    }
    return {name: name};
};

Show.expandCommand = function(json, commandDict) {
    /** expandCommand doesn't happen during a performance, but should only be
        called when you read a new data file, so we can afford to be a little
        luxurious. */

    /** Matches a string that starts with exactly one of the prefix (so you
        can escape prefix characters by repeating them). */
    function execute(cmd, args) {
        var command = Show.getFromAddress(commandDict, cmd);
        return command.apply(this, args || []);
    }

    function expand(json) {
        if (typeof(json) === 'string') {
            var split = Show.splitPrefix(json);
            if (!split.prefix)
                return split.name;
            if (split.prefix === Show.executePrefix)
                return execute(split.name);
            // It's a scene!
            var address = Show.splitAddress(json.slice(1));
            return expand([Show.executePrefix + 'scene'].concat(address));
        }

        if (json instanceof Array) {
            var split = Show.splitPrefix(json[0]);
            if (split.prefix === Show.executePrefix)
                return execute(split.name, json.slice(1));
        }

        if (json instanceof Object)
            return applyEach(json, expand);

        return json;
    }

    return expand(json);
};
