#ifndef __SWIRLY_LOGGING__
#define __SWIRLY_LOGGING__

var Logging = {};

Logging.setLogging = function(on) {
  Logging.Log = on ? Postln : function() {};
};

Logging.setLogging(false);

#define LOADED() \
    post('Original source:', __FILE__, ' Compile date:', _COMPILE_DATE)

#endif  // __SWIRLY_LOGGING__
