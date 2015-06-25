#pragma once

#include "swirly/show/Show.js"

/**
   Show.splitAddress splits an address looking like a.b[23].e into its component
   parts.
 */
Show.splitAddress = function(address) {
    if (!address.length)
        return [];

    function check(condition, message) {
        if (!condition)
            throw 'Malformed address ' + address + ': ' + message;
    };

    var parts = address.split('.'),
        result = [];

    for (var i = 0; i < parts.length; ++i) {
        var part = parts[i];
        check(part.length, 'Empty address component');

        // Now split out any pairs of brackets.
        while (part.length) {
            var lindex = part.indexOf('['),
                rindex = part.indexOf(']');

            if (lindex == -1) {
                check(rindex == -1, 'Extra [');
                result.push(part);
                break;
            }

            check(rindex != -1, 'Extra ]');
            check(lindex < rindex, '] before [');
            check(lindex > 0, 'indexing empty string');
            check(rindex - lindex > 1, 'indexed by empty string');

            var body = part.slice(0, lindex),
                index = part.slice(lindex + 1, rindex);

            // check(!isNaN('index'), '[] indexes must be numeric'); who cares?
            result.push(body);
            result.push(index);
            part = part.slice(rindex + 1);
        }
    }
    return result;
};

/**
   Given a dictionary and an address, return the entry resulting by
   dereferencing the dictionary recursively for each part of the address.
 */
Show.getFromAddress = function(dict, address) {
    if (typeof(address) === 'string')
        address = Show.splitAddress(address);

    var result = dict;
    for (var i = 0; i < address.length; ++i) {
        result = result[address[i]];
        if (result === undefined)
            throw 'Can\'t get address ' + address[i];
    }
    return result;
};
