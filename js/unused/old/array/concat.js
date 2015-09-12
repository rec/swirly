#ifndef __ARRAY_CONCAT
#define __ARRAY_CONCAT

// Concatinate two arguments or argument lists, only returning a new list if
// both lists are non-empty.
//
// I wrote this some time ago.  My current thinking on this code is that it's a
// tiny bit faster, but less clear and less safe than simply creating a new list
// with Array.ConcatSafe and I'll probably get rid of this as a result.  (It's
// unsafe because if you modify the resturned result, you might be modifying one
// of the original arrays...!)
//
Array.Concat = function(x, y) {
  if (!(x && x.length))
    return y;

  if (!(y && y.length))
    return x;

  return Array.ConcatSafe(x, y);
};

Array.ConcatSafe = function(x, y) {
  // If x doesn't have the .concat method, it's an argument list: see
  // http://ax.to/jsarguments
  if (!x.concat)
    x = arrayfromargs(x);

  if (!y.concat)
    y = arrayfromargs(y);

  return x.concat(y);
};

#endif  // __ARRAY_CONCAT
