#ifndef __ADDCOMMANDS
#define __ADDCOMMANDS

#include "swirly/util/util.js"

Util.addCommands = function(_) {
  var results = {};
  for (var i = 0; i < arguments.length; ++i) {
    var object = arguments[i];
    for (var name in object) {
      var member = object[name];
      if (typeof(member) == 'function' && name[0] != '_')
        results[name.toLowerCase()] = member;
    }
  }
  return results;
};

#endif  // __ADDCOMMANDS
