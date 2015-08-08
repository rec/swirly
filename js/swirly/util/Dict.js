#pragma once

#include "swirly/util/util.js"

Dict = {};

Dict.Keys = function(d) {
  /** TODO: these's a better way.*/
  var r = [];
  for (var i in d)
    r.push(i);

  return r;
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

Dict.GetKeys = function(dict) {
  var names = [];
  for (var name in dict)
    names.push(name);

  return names;
};

Dict.GetCommandFromMap = function(map, input) {
  if (!input || !input.length) {
    post("ERROR: Empty input", Print(input), '\n');
    return;
  }

  for (var i = 0; ; ++i) {
    if (!map) {
      post("ERROR: Didn't understand input", Print(input), '\n');
      return;
    }

    if (Util.IsString(map))
      return {command: map, data: input.slice(i + 1)};

    if (i >= input.length) {
      post("ERROR: Ran out during input", Print(input), '\n');
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
        update(result, arguments[i]);
    return result;
};

Dict.invert = function(dict) {
    var result = {};
    for (var d in dict) {
        var v = dict[d];
        if (v in result)
            throw 'Dict.invert: Duplicate value ' + v;
        result[v] = d;
    }
    return result;
};

Dict.oneach = function(dict, f) {
    for (var k in dict)
        dict[k] = f(dict[k], k);
};

/** We need this because invert always stringifies its keys... */
Dict.invertArray = function(array) {
    var result = {};
    for (var i = 0; i < array.length; ++i) {
        var v = array[i];
        if (v in result)
            throw 'Dict.invertArray: Duplicate value ' + v;
        result[v] = i;
    }
    return result;
};

Dict.forEach = function(dict, f) {
    for (var k in dict)
        f(dict[k], k);
};

/** Get a value from a dictionary, or throw an exception. */
Dict.get = function(dict, key, name) {
    var result = dict[key];
    if (result !== undefined)
        return result;
    throw 'Couldn\'t find key ' + key + ' in dictionary ' + (name || '');
};

/** Return a function that gets a value from a dictionary, or throws an
    exception. */
Dict.getter = function(dict, name) {
    return function(key) {
        return Dict.get(dict, key, name);
    };
};
