#pragma once

#include "swirly/util/util.js"

Util.expandCommandJSON = function(json, commandTable) {
    function expand(json) {
        if (!(json instanceof Object))
            return json;
        if (json instanceof Array) {
            var result = [];
            for (var i = 0; i < json.length; ++i)
                result.push(expand(json[i]));
            return result;
        }
        if (json.command) {
            var command = commandTable[json.command];
            if (!command)
                throw 'Couldn\'t understand command ' + json.command;
            return command(json.data);
        }

        var result = {};
        for (var i in json)
            result[i] = expand(json[i]);
        return result;
    };

    return expand(json);
};
