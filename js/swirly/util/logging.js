#pragma once

#include "swirly/util/print.js"

var Logging = {};

Logging.setLogging = function(on) {
  Logging.Log = on ? Postln : function() {};
};

Logging.setLogging(false);

#define LOADED() \
    post('Original source:', __FILE__, ' Compile date:', _COMPILE_DATE, '\n')
