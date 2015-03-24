#ifndef __FINDOBJECTS
#define __FINDOBJECTS

#include "swirly/max/max.js"

Max.findObjects = function(name, value, container) {
    if (container === undefined)
        container = Max.patcher;
  var result = [];
  for (var i = container.firstobject; i; i = i.nextobject) {
    if (i[name] == value)
      result.push(i);
  }
  return result;
};

Max.findName = function(name, container) {
  return Max.findObjects('varname', name, container);
};

Max.findSubpatcher = function(name, container) {
  return Max.findName(name, container)[0].subpatcher();
};

Max.findClass = function(name, container) {
    return Max.findObjects('maxclass', name, container);
};

#endif  // __FINDOBJECTS
