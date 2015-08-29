#pragma once

#include "swirly/show/Address.js"
#include "swirly/util/ForEach.js"
#include "swirly/util/FileReader.js"

Show.executePrefix = '*';
Show.scenePrefix = '$';
Show.filePrefix = '@';

Show.prefixes = '*$@';


/** Split off a show prefix from a string and return a dictionary with name and
    optional prefix element.  Handles the "escaping" case where a string starts
    with two prefixes.
*/
Show.splitPrefix = function(name) {
    if (name && name.length > 1) {
        var ch = name[0];
        if (Show.prefixes.indexOf(ch) != -1) {
            var result = {name: name.slice(1)};
            if (name[1] !== ch)
                result.prefix = ch;
            return result;
        }
    }
    return {name: name};
};

/** expandCommand doesn't happen during a performance, but should only be called
    when you read a new data file, so we can afford to be a little luxurious.
*/
Show.expandCommand = function(json, commandDict, fileReader, sceneReader) {
    function execute(name, args) {
        Show.getFromAddress(commandDict, name).apply(this, args || []);
    }

    function scene(name) {
        return [Show.executePrefix + 'scene'].concat(Show.splitAddress(name));
    }

    function identity(name) {
        return name;
    }

    var prefixes = {
        '*': execute,
        '@': fileReader,
        '$': scene,
    };

    function expand(json) {
        if (typeof(json) === 'string') {
            var split = Show.splitPrefix(json),
                func = prefixes[split.prefix] || identity;
            return expand(func(split.name));
        }

        if (json instanceof Array) {
            var split = Show.splitPrefix(json[0]);
            if (split.prefix === Show.executePrefix)
                return expand(execute(split.name, json.slice(1)));
        }

        if (json instanceof Object)
            return applyEach(json, expand);

        return json;
    }

    return expand(json);
};

/** Read a set of commands from a file.*/
Show.readCommands = function(filename, commandDict, length) {
    var json = FileReader.readJson(filename, length);
    return Show.expandCommand(json, commandDict);
};
