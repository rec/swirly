#ifndef __SWIRLY_UTIL_YAML__
#define __SWIRLY_UTIL_YAML__

#include "swirly/util/util.js"

Util.Yaml = function() {

  var exports = {};

#include "js-yaml/lib/yaml.js"

  return exports.eval;
}();

#endif  // __SWIRLY_UTIL_YAML__
