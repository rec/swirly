#ifndef __BINARY_SEARCH__
#define __BINARY_SEARCH__

#include "swirly/util/Util.js"

// Returns the latest item that's at or before the given index, or -1.
Util.binarySearch = function(items, index, indexFunction) {
  // begin is always before or equals time.
  // end is always strictly after time.
  var begin = -1;
  var end = items.length;

  while ((end - begin) > 1) {
    var mid = Math.floor((begin + end) / 2);
    var midIndex = indexFunction(items[mid]);
    if (midIndex <= index)
      begin = mid;
    else
      end = mid;
  }
  return begin;
};

#endif
