#ifndef __SWIRLY_UTIL_COMPARE
#define __SWIRLY_UTIL_COMPARE

#include "swirly/util/util.js"
#include "swirly/array/is.js"

// Compare two items that might be lists.  Crave Python.
Util.Compare = function(item1, item2) {
  var poster = function(_) {};
  if (Testing.verbose_compare) {
    poster = function(_) {
      post(['Util.Compare:'].concat(arrayfromargs(arguments)), '\n');
    };
  }

  if ((!item1) != (!item2)) {
    poster("one item was empty, the other wasn't", item1, item2);
    return false;
  }

  var t1 = typeof(item1);
  var t2 = typeof(item2);
  if (t1 != t2) {
    poster('different types', t1, t2);

    return false;
  }

  if (t1 != 'object') {
    if (item1 == item2)
      return true;

    poster('not objects, not equal: ', item1, ' != ', item2);

    return false;
  }

  var a1 = Array.Is(item1);
  var a2 = Array.Is(item2);
  if (a1 != a2) {
    poster("only one item was an array", item1, item2);
    return false;
  }

  function subset(item1, item2) {
    for (var i in item1) {
      if (!(i in item2)) {
        poster('index', i, 'missing in item');
        return false;
      }

      if (!Util.Compare(item1[i], item2[i])) {
        poster('index', i, ':', Print(item1[i]), '!=', Print(item2[i]));
        return false;
      }
    }
    return true;
  };

  if (!a1)
    return subset(item1, item2) && subset(item2, item1);

  if (item1.length != item2.length) {
    poster('lengths differ', item1.length, item2.length);
    for (var i = 0; i < item1.length; ++i)
      poster('item', i, Print(item1[i]));
    return false;
  }

  for (var i = 0; i < item1.length; ++i) {
    if (!Util.Compare(item1[i], item2[i]))
      return false;
  }
  return true;
};

#endif  // __SWIRLY_UTIL_COMPARE
