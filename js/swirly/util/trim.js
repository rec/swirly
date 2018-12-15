#ifndef __SWIRLY_TRIM__
#define __SWIRLY_TRIM__

#include "swirly/util/Error.js"
#include "swirly/util/util.js"

Util.trimFrontRE = /^\s+/;
Util.trimBackRE = /\s+$/;

Util.trim = function(s) {
  if (typeof(s) != 'string') {
    ERROR('Not a string', s);
    return s;
  }
  return s.replace(Util.trimBackRE, '').replace(Util.trimFrontRE, '');
};


#endif  // __SWIRLY_TRIM__
