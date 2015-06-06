#pragma once

#include "swirly/util/util.js"

Util.Dict = {};

Util.Dict.Keys = function(d) {
  /** TODO: these's a better way.*/
  var r = [];
  for (var i in d)
    r.push(i);

  return r;
};

Util.Dict.GetOrAddDefault = function(table, key,  value) {
  if (key in table)
    value = table[key];
  else
    table[key] = value;

  return value;
};

Util.Dict.Copy = function(dict) {
  return Util.Dict.CopyTo(dict, {});
};

Util.Dict.CopyTo = function(from, to) {
  for (var name in from)
    to[name] = from[name];
  return to;
};

Util.Dict.GetKeys = function(dict) {
  var names = [];
  for (var name in dict)
    names.push(name);

  return names;
};

Util.Dict.GetCommandFromMap = function(map, input) {
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

Util.Dict.remap = function(map, assignments) {
    var result = {};
    for (var a in assignments)
        result[map[a]] = assignments[a];
    return result;
};

Util.Dict.update = function(to, from) {
    for (var i in from)
        to[i] = from[i];
};

Util.Dict.offset = function(dict, offset) {
    for (var i in dict)
        dict[i] += offset;
};


Util.Dict.union = function(_) {
    var result = {};
    for (var i in arguments)
        update(result, arguments[i]);
    return result;
};

Util.Dict.invert = function(dict) {
    var result = {};
    for (var d in dict) {
        var v = dict[d];
        if (v in result)
            throw 'Util.Dict.invert: Duplicate value ' + v;
        result[v] = d;
    }
    return result;
};

Util.Dict.oneach = function(dict, f) {
    for (var k in dict)
        dict[k] = f(dict[k], k);
};

/** We need this because invert always stringifies its keys... */
Util.Dict.invertArray = function(array) {
    var result = {};
    for (var i = 0; i < array.length; ++i) {
        var v = array[i];
        if (v in result)
            throw 'Util.Dict.invertArray: Duplicate value ' + v;
        result[v] = i;
    }
    return result;
};

Util.Dict.forEach = function(dict, f) {
    for (var k in dict)
        f(k, dict[k]);
};

var Dict = Util.Dict;
