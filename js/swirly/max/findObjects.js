#ifndef __FINDOBJECTS
#define __FINDOBJECTS

#include "swirly/max/max.js"

Max.findObjects = function(name, value, container) {
  container = container || Max.patcher;
  var result = [];
  for (var i = container.firstobject; i; i = i.nextobject) {
    if (i[name] == value)
      result.push(i);
  }
  return result;
};

#endif  // __FINDOBJECTS
