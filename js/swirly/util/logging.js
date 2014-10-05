#ifndef __SWIRLY_LOGGING__
#define __SWIRLY_LOGGING__

#include "swirly/util/print.js"

var Logging = {};

Logging.setLogging = function(on) {
  Logging.Log = on ? Postln : function() {};
};

Logging.setLogging(false);

#define ERROR(MSG, VALUE) \
    post('Error at', __FILE__, ':', __LINE__, ':', MSG, Print(VALUE), '\n')

#define LOADED() \
    post('Original source:', __FILE__, ' Compile date:', _COMPILE_DATE)

#endif  // __SWIRLY_LOGGING__
