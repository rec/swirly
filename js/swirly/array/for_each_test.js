#include "swirly/array/for_each.js"

Testing.TestFunction(function() {
  function f(name, value) {
    Testing.results.push([name, value]);
  };

  Testing.ExpectFunction('array',
                         Array.ForEach, this, [[1, 2, 3], f],
                         [[1, 1], [2, 2], [3, 3]], true);
  Testing.ExpectFunction('array',
                         Array.ForEach, this, [{1:'a', 2:'b'}, f, true],
                         [['a', '1'], ['b', '2']], true);
  Testing.ExpectFunction('array',
                         Array.ForEach, this, [{1:'a', 2:'b'}, f],
                         [['1', 'a'], ['2', 'b']], true);
});

