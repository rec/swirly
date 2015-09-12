#ifndef __FOR_EACH
#define __FOR_EACH

// Array.ForEach iterates over a collection with a 2-argument function f(name,
// item).  If the collection is an array, ForEach calls f(item, item) for each
// item in the collection:  otherwise, ForEach calls f(index, collection[index])
// for each index in the associative array.
//
// This is very useful for reading data or function arguments where you usually
// want the name and the thing itself to be the same but sometimes want to
// have the name and thing iself be different.
Array.ForEach = function(collection, f, reverse) {
  var is_array = Array.Is(collection);
  for (var name in collection) {
    var value = collection[name];
    if (is_array)
      f(value, value);
    else if (reverse)
      f(value, name);
    else
      f(name, value);
  }
};

#endif  // __FOR_EACH
