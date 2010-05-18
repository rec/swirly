#include "swirly/util/testing.js"
#include "swirly/undo/setter.js"

Testing.TestFunction(function() {
  var dict = {};
  var undo1 = Undo.Setter(dict, 'foo', 'bar')();
  Testing.ExpectEqual('Undo.Setter', dict, {'foo': 'bar'});

  var undo2 = Undo.Setter(dict, 'foo', 'baz')();
  Testing.ExpectEqual('Undo.Setter', dict, {'foo': 'baz'});

  undo2();
  Testing.ExpectEqual('Undo.Setter', dict, {'foo': 'bar'});

  undo1();
  Testing.ExpectEqual('Undo.Setter', dict, {});
});

