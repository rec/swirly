#ifndef __ARRAY_CONCAT
#define __ARRAY_CONCAT

// Concatinate two arguments or argument lists, only returning a new list if
// both lists are non-empty.
Array.Concat = function(x, y) {
  if (!(x && x.length))
    return y;

  if (!(y && y.length))
    return x;

  if (!x.concat)
    x = arrayfromargs(x);

  if (!y.concat)
    y = arrayfromargs(y);

  return x.concat(y);
};

#endif  // __ARRAY_CONCAT
