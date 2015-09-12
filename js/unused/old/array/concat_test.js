#include "swirly/array/concat.js"

Testing.TestFunction(function() {
  // getArgs() returns an argument list from its arguments,
  // as in http://ax.to/jsarguments.
  function getArgs(_) { return arguments; }

  Testing.ExpectFunction('Array.concat', Array.Concat, this,
                         [getArgs(), getArgs()], getArgs());
  Testing.ExpectFunction('Array.concat', Array.Concat, this,
                         [getArgs(1), getArgs()], getArgs(1));
  Testing.ExpectFunction('Array.concat', Array.Concat, this,
                         [getArgs(1, 2), getArgs()], getArgs(1, 2));
  Testing.ExpectFunction('Array.concat', Array.Concat, this,
                         [getArgs(1), getArgs(2)], [1, 2]);

  Testing.ExpectFunction('Array.concat', Array.ConcatSafe, this,
                         [getArgs(), getArgs()], []);
  Testing.ExpectFunction('Array.concat', Array.ConcatSafe, this,
                         [getArgs(1), getArgs()], [1]);
  Testing.ExpectFunction('Array.concat', Array.ConcatSafe, this,
                         [getArgs(1, 2), getArgs()], [1, 2]);
  Testing.ExpectFunction('Array.concat', Array.ConcatSafe, this,
                         [getArgs(1), getArgs(2)], [1, 2]);
});

