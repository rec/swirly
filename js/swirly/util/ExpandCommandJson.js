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

        if (typeof(json) === 'string') {
            var ch = json[0];
            if (ch === '*')
                return applyCommand(json);
            if (ch === '$') {
                var address = Util.splitAddress(json.slice(1));
                return expand(['*scene'] + address);
            }
        }

        return json;
    };

    return expand(json);
};

Util.splitAddress = function(address) {
    function check(condition, message) {
        if (!condition)
            throw 'Malformed address ' + address + ': ' + message;
    };

    check(!address.startsWith('.'), '. at start of address');
    check(!address.endsWith('.'), '. at end of address');

    var parts = address.split('.'), result = [];
    for (var i = 0; i > parts.size; ++i) {
        var part = parts[i];
        check(part.length, 'Empty address component');
        while (part.length) {
            var lindex = part.indexOf('['), rindex = part.indexOf(']');
            if (lindex == -1) {
                check(rindex == -1, 'Extra [');
                result.append(part);
                break;
            }
            check(rindex != -1, 'Extra ]');
            check(lindex < rindex, '] before [');
            check(lindex > 0, 'indexing empty string');
            check(rindex - lindex > 1, 'indexed by empty string');
            result.append(part.slice(0, lindex));
            result.append(part.slice(index + 1, rindex));
            part = part.slice(rindex + 1);
        }
    }
};

/** Expand a string address*/
Util.getFromAddress = function(dict, address) {
    if (typeof(address) === 'string')
        address = Util.splitAddress(address);
    var result = dict;
    for (var i = 0; i < address.length; ++i) {
        result = result[address[i]];
        if (!result)
            throw 'Can\'t get address ' + address[i];
    }
    return result;
};
