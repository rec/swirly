#pragma once

#include "swirly/show/Show.js"

Show.splitAddress = function(address) {
    function check(condition, message) {
        if (!condition)
            throw 'Malformed address ' + address + ': ' + message;
    };

    check(address[0] !== '.', '. at start of address');
    check(address[address.length - 1] !== '.', '. at end of address');

    if (!address.length)
        return [];
    var parts = address.split('.'), result = [];

    for (var i = 0; i < parts.length; ++i) {
        var part = parts[i];
        check(part.length, 'Empty address component');
        while (part.length) {
            var lindex = part.indexOf('['), rindex = part.indexOf(']');
            if (lindex == -1) {
                check(rindex == -1, 'Extra [');
                result.push(part);
                break;
            }
            check(rindex != -1, 'Extra ]');
            check(lindex < rindex, '] before [');
            check(lindex > 0, 'indexing empty string');
            check(rindex - lindex > 1, 'indexed by empty string');
            result.push(part.slice(0, lindex));
            result.push(part.slice(lindex + 1, rindex));
            part = part.slice(rindex + 1);
        }
    }
    return result;
};

/** Expand a string address*/
Show.getFromAddress = function(dict, address) {
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
