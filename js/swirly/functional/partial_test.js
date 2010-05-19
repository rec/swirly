#include "swirly/functional/partial.js"

Testing.TestFunction(function() {
  function TestClass() {
    this.x = 3;
    this.F = function(x, y, z) {
      return x + y + z;
    };
  };

  var object = new TestClass();
  var f = Functional.Partial(object.F);

  Testing.ExpectEqual('functional.Partial', f('1', '2', '3')(), '123');
  Testing.ExpectEqual('functional.Partial', f('1', '2')('3'),  '123');
  Testing.ExpectEqual('functional.Partial', f('1')('2', '3'),  '123');
  Testing.ExpectEqual('functional.Partial', f()('1', '2', '3'),  '123');

  var fr = Functional.Partial(object.F, true);
  Testing.ExpectEqual('functional.Partial', fr()('1', '2', '3'), '123');
  Testing.ExpectEqual('functional.Partial', fr('1')('2', '3'), '231');
  Testing.ExpectEqual('functional.Partial', fr('1', '2')('3'), '312');
  Testing.ExpectEqual('functional.Partial', fr('1', '2', '3')(), '123');
});
