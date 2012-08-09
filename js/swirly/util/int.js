#ifndef __SWIRLY_UTIL_INT__
#define __SWIRLY_UTIL_INT__

#include "swirly/util/util.js"

// Convert a number to an integer, if it isn't already one.
Util.toInt = function(s) {
  return (typeof(s) == 'number') ? s : parseInt(s);
};

#endif  // __SWIRLY_UTIL_INT__
