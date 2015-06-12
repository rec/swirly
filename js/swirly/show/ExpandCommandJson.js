#pragma once

#include "swirly/show/Address.js"

Show.expandCommandJSON = function(json, commandTable) {
    function applyCommand(name, args) {
        var command = Show.getFromAddress(commandTable, name.slice(1));
        return command.apply(this, args || []);
    };

    function expand(json) {
        if (json instanceof Array) {
            if (json[0] && json[0][0] == '*')
                return applyCommand(json[0], json.slice(1));
            var result = [];
            for (var i = 0; i < json.length; ++i)
                result.push(expand(json[i]));
            return result;
        }

        if (json instanceof Object) {
            var result = {};
            for (var i in json)
                result[i] = expand(json[i]);
            return result;
        }

        if (typeof(json) === 'string') {
            var ch = json[0];
            if (ch === '*')
                return applyCommand(json);
            if (ch === '$') {
                var address = Show.splitAddress(json.slice(1));
                return expand(['*scene'] + address);
            }
        }

        return json;
    };

    return expand(json);
};
