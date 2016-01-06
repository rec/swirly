#ifndef __SWIRLY_UTIL_IS_STRING__
#define __SWIRLY_UTIL_IS_STRING__

#include "swirly/util/util.js"

Util.ArrayToString = function(s) {
  return Util.IsString(s) ? s : s[0];
};

Util.RemoveQuotes = function(s) {
  var begin = 0, end = s.length;
  if (end && s[begin] == '"')
    ++begin;
  if (end > begin && s[end - 1] == '"')
    --end;
  return s.substring(begin, end);
};

Util.LiveStringToString = function(s) {
  return Util.RemoveQuotes(Util.ArrayToString(s));
};

Util.endsWith = function(str, suffix) {
    return str.indexOf(suffix, str.length - suffix.length) !== -1;
};

Util.addSuffix = function(str, suffix) {
    return Util.endsWith(str, suffix) ? str : str + suffix;
};

function isString(s) {
    return (s.constructor === String);
}

#endif  // __SWIRLY_UTIL_IS_STRING__
