#ifndef __SWIRLY_UTIL_IS_STRING__
#define __SWIRLY_UTIL_IS_STRING__

#include "swirly/util/util.js"

Util.IsString = function(x) {
  return typeof(x) == 'string';
};

Util.ArrayToString = function(s) {
  return Util.IsString(s) ? s : s[0];
};


#endif  // __SWIRLY_UTIL_IS_STRING__
