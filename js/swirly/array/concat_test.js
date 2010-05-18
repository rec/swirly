#include "swirly/array/concat.js"

Testing.TestFunction(function() {
  function getArgs(_) { return arguments; }

  Testing.ExpectFunction('Array.concat', Array.Concat, this,
                         [getArgs(), getArgs()], getArgs());
  Testing.ExpectFunction('Array.concat', Array.Concat, this,
                         [getArgs(1), getArgs()], getArgs(1));
  Testing.ExpectFunction('Array.concat', Array.Concat, this,
                         [getArgs(1, 2), getArgs()], getArgs(1, 2));
  Testing.ExpectFunction('Array.concat', Array.Concat, this,
                         [getArgs(1), getArgs(2)], [1]);
});

