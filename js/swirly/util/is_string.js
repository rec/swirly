#ifndef __SWIRLY_UTIL_IS_STRING__
#define __SWIRLY_UTIL_IS_STRING__

#include "swirly/util/util.js"

Util.IsString = function(x) {
  return typeof(x) == 'string';
};

#endif  // __SWIRLY_UTIL_IS_STRING__
