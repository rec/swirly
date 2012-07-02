#ifndef __SWIRLY_UTIL_MOD
#define __SWIRLY_UTIL_MOD

#include "swirly/util/util.js"

// Javascript's mod (% operator) is screwed up:  see
// http://javascript.about.com/od/problemsolving/a/modulobug.htm
// Use Util.Mod instead.

Util.Mod = function(x, n) { return ((x % n) + n) % n; }

#endif  // __SWIRLY_UTIL_MOD
