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
  post('here 7!!\n');
  return Util.Dict.CopyTo(dict, {});
};

Util.Dict.CopyTo = function(from, to) {
  post('here 8!!\n');
  for (var name in from) {
    post('here 9!!', name, from[name], '\n');
    to[name] = from[name];
  }

  post('here 10!!\n');
  return to;
};

#endif  // __SWIRLY_DICT_UTILS
