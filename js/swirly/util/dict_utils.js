#ifndef __SWIRLY_DICT_UTILS
#define __SWIRLY_DICT_UTILS

#include "swirly/util/util.js"

Util.Dict = {};

Util.Dict.Keys = function(d) {
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

#endif  // __SWIRLY_DICT_UTILS
