#ifndef __APPLY_TO_OBJECT
#define __APPLY_TO_OBJECT

#include "swirly/functional/partial.js"

// ApplyToObject calls a named method, or applies a named setter or getter,
// depending on the type of the object member.
//
// See the unit test for examples.
Functional.ApplyToObject = function(object, member_name, value, _) {
  var item = object[member_name];
  if (typeof(item) == 'function')  // It's a function.
    return item.apply(object, arrayfromargs(arguments).slice(2));

  if (value === undefined)
    return item;

  // It's a setter.
  var oldValue = object[member_name];
  object[member_name] = value;
  return oldValue;
};

Functional.ObjectApplier = Functional.Partial(Functional.ApplyToObject);

#endif  // __APPLY_TO_OBJECT
