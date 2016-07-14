#pragma once

#include "swirly/util/print.js"

var Logging = {};

Logging.setLogging = function(on) {
  Logging.Log = on ? Postln : function() {};
};

Logging.setLogging(false);

#define PRINT_MESSAGE_ON_LOAD() \
    print('\nOriginal source:', __FILE__, ' Compile date:', _COMPILE_DATE)
