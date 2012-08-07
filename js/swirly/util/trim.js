#ifndef __SWIRLY_TRIM__
#define __SWIRLY_TRIM__

#include "swirly/util/Util.js"

Util.trim = function(s) {
  return s.replace('/^\s+|\s+$/g', '');
};


#endif  // __SWIRLY_TRIM__