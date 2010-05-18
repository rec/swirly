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
  var result = {};
  for (var name in dict)
    result[name] = dict[name];

  return result;
};

#endif  // __SWIRLY_DICT_UTILS
