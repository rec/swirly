#pragma once

#include "swirly/util/string.js"

Dicti = {};

Dicti.Setter = function(dict) {
    return function(key, value) {
        dict[key] = value;
    };
};

Dicti.GetOrAddDefault = function(table, key,  value) {
  if (key in table)
    value = table[key];
  else
    table[key] = value;

  return value;
};

Dicti.Copy = function(dict) {
  return Dicti.CopyTo(dict, {});
};

Dicti.CopyTo = function(from, to) {
  for (var name in from)
    to[name] = from[name];
  return to;
};

Dicti.values = function(dict) {
    var results = [];
    for (var i in dict)
        results.push(dict[i]);
    return results;
};

Dicti.GetCommandFromMap = function(map, input) {
    if (!input || !input.length) {
        print('ERROR: Empty input', Print(input));
        return;
    }

    for (var i = 0; ; ++i) {
        if (!map) {
            print('ERROR: Didn\'t understand input', Print(input));
            return;
        }

        if (isString(map))
            return {command: map, data: input.slice(i + 1)};

        if (i >= input.length) {
            print('ERROR: Ran out during input', Print(input));
            return;
        }

        map = map[input[i]] || map['*'];
    }
};

Dicti.remap = function(map, assignments) {
    var result = {};
    for (var a in assignments)
        result[map[a]] = assignments[a];
    return result;
};

Dicti.update = function(to, from) {
    for (var i in from)
        to[i] = from[i];
};

Dicti.offset = function(offset, dict) {
    var result = {};
    for (var i in dict)
        result[i] = dict[i] + offset;
    return result;
};

Dicti.union = function(_) {
    var result = {};
    for (var i in arguments)
        Dicti.update(result, arguments[i]);
    return result;
};

Dicti.invert = function(array) {
    var result = {};
    forEach(array, function(value, index) {
        if (value in result)
            throw 'Dicti.invert: Duplicate value ' + v;
        result[value] = index;
    });
    return result;
};

Dicti.onEach = function(dict, f) {
    results = {}
    for (var k in dict)
        results[k] = f(dict[k], k);
    return results;
};

// Deprecated?
Dicti.oneach = function(dict, f) {
    for (var k in dict)
        dict[k] = f(dict[k], k);
};

Dicti.forEach = function(dict, f) {
    for (var k in dict)
        f(dict[k], k);
};

/** Get a value from a dictionary, or throw an exception. */
Dicti.get = function(dict, key, errorName) {
    var result = dict[key];
    if (result !== undefined)
        return result;
    throw 'Couldn\'t find key ' + key + ' in dictionary ' + (errorName || '');
};

/** Return a function that gets a value from a dictionary, or throws an
    exception. */
Dicti.getter = function(dict, errorName) {
    return function(key) {
        return Dicti.get(dict, key, errorName);
    };
};

Dicti.keyGetter = function(key, errorName) {
    return function(dict) {
        return Dicti.get(dict, key, errorName || key);
    };
};

Dicti.concat = function(args) {
    return args.reduce(function(p, c) { return p + c; }, []);
};

Dicti.sequence = function(functions) {
    return function() {
        functions.forEach(function(f) { f(); });
    };
};

/** Flatten an array of arrays and promote scalars to arrays.
    The result is a flat list of non-lists. */
Dicti.flatten = function(args) {
    if (!(args instanceof Array))
        return [args];
    var result = [];
    args.forEach(function(a) {
        result = result.concat(Dicti.flatten(a));
    });
    return result;
};

Dicti.fillArray = function(n, value) {
    var result = [];
    for (var i = 0; i < n; ++i)
        result.push(value);
    return result;
};
