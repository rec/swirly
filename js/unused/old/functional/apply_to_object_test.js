#include "swirly/functional/apply_to_object.js"

Testing.TestFunction(function() {
  // Instances of TestClass have a member named x and a method named F.
  function TestClass() {
    this.x = 3;

    this.F = function(x, y, z) {
      return x + y + z;
    };
  };
  var object = new TestClass();

  // Change object.x from 3 to 10 in two different ways.
  Testing.ExpectEqual('functional.ApplyToObject',
                      Functional.ApplyToObject(object, 'x', 10), 3);
  Testing.ExpectEqual('functional.ApplyToObject', object.x, 10);

  Testing.ExpectEqual('functional.ApplyToObject',
                      Functional.ObjectApplier(object)('x', 23), 10);
  Testing.ExpectEqual('functional.ApplyToObject', object.x, 23);


  // Call object.F(1, 2, 12) in two different ways.
  Testing.ExpectEqual('functional.ApplyToObject',
                      Functional.ApplyToObject(object, 'F', 1, 2, 12), 15);
  Testing.ExpectEqual('functional.ApplyToObject',
                      Functional.ObjectApplier(object)('F', 1, 2, 12), 15);
});
