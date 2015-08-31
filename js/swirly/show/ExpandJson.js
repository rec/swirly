#pragma once

#include "swirly/show/Address.js"
#include "swirly/util/ForEach.js"
#include "swirly/util/FileReader.js"

Show.prefixes = {
    '*': 'execute',
    '@': 'read',
    '$': 'scene',
};

/** Split off a show prefix from a string and return a dictionary with name and
    optional prefix element.  Handles the "escaping" case where a string starts
    with two prefixes.
*/
Show.splitPrefix = function(name) {
    if (name && name.length > 1) {
        var ch = name[0],
            prefix = Show.prefixes[ch];
        if (prefix) {
            name = name.slice(1);
            if (name[0] !== ch)
                return {name: name, prefix: prefix};
        }
    }
    return {name: name};
};

/** expandJson doesn't happen during a performance, but should only be called
    when you read a new data file, so we can afford to be a little luxurious.
*/
Show.expandJson = function(json, args) {
    function expand(json) {
        if (typeof(json) === 'string') {
            var split = Show.splitPrefix(json),
                func = args[split.prefix];
            return func ? expand(func(split.name)) : split.name;
        }

        if (json instanceof Array && args.execute) {
            var split = Show.splitPrefix(json[0]);
            if (split.prefix === 'execute')
                return expand(args.execute(split.name, json.slice(1)));
        }

        if (json instanceof Object)
            return applyEach(json, expand);

        return json;
    }

    return expand(json);
};

/** Read a set of json from a file.

    args is an object with entries execute, read, scene.
    which are functions.  read is required, but execute and scene are optional.
*/
Show.readJson = function(filename, args) {
    return Show.expandJson(args.read(filename), args);
};
