#ifndef __GROUP_NOTES__
#define __GROUP_NOTES__

#include "swirly/util/Util.js"

Util.groupItems = function(items, indexFunction, threshold, anchorToFirst) {
  var groups = [];
  var group = [];

  function isNewGroup(index) {
    if (group.length) {
      var j = anchorToFirst ? 0 : (group.length - 1);
      var newIndex = indexFunction(items[j]);
      return (Math.abs(index - newIndex) > threshold);
    }
  };

  for (var i in items) {
    var item = items[i];
    if (isNewGroup(indexFunction(item))) {
      groups.push(group);
      group = [];
    }
    group.push(item);
  }

  if (group.length)
    groups.push(group);

  return result;
};

#endif