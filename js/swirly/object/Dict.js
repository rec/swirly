#pragma once

#include "swirly/util/string.js"

Dict = {};

Dict.Setter = function(dict) {
    return function(key, value) {
        dict[key] = value;
    };
};

Dict.GetOrAddDefault = function(table, key,  value) {
  if (key in table)
    value = table[key];
  else
    table[key] = value;

  return value;
};

Dict.Copy = function(dict) {
  return Dict.CopyTo(dict, {});
};

Dict.CopyTo = function(from, to) {
  for (var name in from)
    to[name] = from[name];
  return to;
};

Dict.values = function(dict) {
    var results = [];
    for (var i in dict)
        results.push(dict[i]);
    return results;
};

Dict.GetCommandFromMap = function(map, input) {
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

Dict.remap = function(map, assignments) {
    var result = {};
    for (var a in assignments)
        result[map[a]] = assignments[a];
    return result;
};

Dict.update = function(to, from) {
    for (var i in from)
        to[i] = from[i];
};

Dict.offset = function(offset, dict) {
    var result = {};
    for (var i in dict)
        result[i] = dict[i] + offset;
    return result;
};

Dict.union = function(_) {
    var result = {};
    for (var i in arguments)
        Dict.update(result, arguments[i]);
    return result;
};

Dict.invert = function(array) {
    var result = {};
    forEach(array, function(value, index) {
        if (value in result)
            throw 'Dict.invert: Duplicate value ' + v;
        result[value] = index;
    });
    return result;
};

Dict.oneach = function(dict, f) {
    for (var k in dict)
        dict[k] = f(dict[k], k);
};


Dict.forEach = function(dict, f) {
    for (var k in dict)
        f(dict[k], k);
};

/** Get a value from a dictionary, or throw an exception. */
Dict.get = function(dict, key, errorName) {
    var result = dict[key];
    if (result !== undefined)
        return result;
    throw 'Couldn\'t find key ' + key + ' in dictionary ' + (errorName || '');
};

/** Return a function that gets a value from a dictionary, or throws an
    exception. */
Dict.getter = function(dict, errorName) {
    return function(key) {
        return Dict.get(dict, key, errorName);
    };
};

Dict.keyGetter = function(key, errorName) {
    return function(dict) {
        return Dict.get(dict, key, errorName || key);
    };
};

Dict.concat = function(args) {
    return args.reduce(function(p, c) { return p + c; }, []);
};

Dict.sequence = function(functions) {
    return function() {
        functions.forEach(function(f) { f(); });
    };
};

/** Flatten an array of arrays and promote scalars to arrays.
    The result is a flat list of non-lists. */
Dict.flatten = function(args) {
    if (!(args instanceof Array))
        return [args];
    var result = [];
    args.forEach(function(a) {
        result = result.concat(Dict.flatten(a));
    });
    return result;
};

Dict.fillArray = function(n, value) {
    var result = [];
    for (var i = 0; i < n; ++i)
        result.push(value);
    return result;
};
