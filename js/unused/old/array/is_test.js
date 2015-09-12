#include "swirly/array/is.js"
#include "swirly/array/for_each.js"

Testing.TestFunction(function() {
  Testing.ExpectFunction('array', Array.Is, this, [[1]], true);
  Testing.ExpectFunction('array', Array.Is, this, [[]], true);
  Testing.ExpectFunction('array', Array.Is, this, [[1, 2]], true);
  Testing.ExpectFunction('array', Array.Is, this, [{}], false);
  Testing.ExpectFunction('array', Array.Is, this, [{1:1}], false);
  Testing.ExpectFunction('array', Array.Is, this, [new Object()], false);

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

