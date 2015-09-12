#ifndef __ARRAY_IS
#define __ARRAY_IS

// Also see:
// http://www.optimalworks.net/blog/2007/web-development/javascript/array-detection
Array.Is = function(array) {
  return (array !== null) &&
    (typeof(array) == 'object') &&
    ((array.prototype === Array.prototype) ||
     (array.constructor &&
      !array.nodeType &&
      !array.item &&
      array.length !== undefined));
};

#endif  // __ARRAY_IS
