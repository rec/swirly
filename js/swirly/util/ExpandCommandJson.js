#pragma once

#include "swirly/util/util.js"

Util.expandCommandJSON = function(json, commandTable) {
    function applyCommand(name, args) {
        var command = commandTable[name.slice(1)];
        if (!command)
            throw 'Don\'t understand command ' + name;
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

        if (typeof(json) === 'string' && json[0] === '*')
            return applyCommand(json);

        return json;
    };

    return expand(json);

};

/** Expand a string address*/
Util.getFromAddress = function(dict, address) {
    if (typeof(address) === 'string')
        address = address.split('.');

    var result = dict;
    for (var i = 0; i < address.length; ++i) {
        result = result[address[i]];
        if (!result)
            throw 'Can\'t get address ' + address[i];
    }
    return result;
};
