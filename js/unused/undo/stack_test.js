#include "swirly/undo/stack.js"
#include "swirly/undo/setter.js"

Testing.TestFunction(function() {
  var dict = {};

  var stack = new Undo.Stack();

  Testing.ExpectTrue('Undo.Stack', !stack.HasUndo());
  Testing.ExpectTrue('Undo.Stack', !stack.HasRedo());

  stack.Do(Undo.Setter(dict, 'foo', 'bar'));

  Testing.ExpectEqual('Undo.Stack', dict, {'foo': 'bar'});
  Testing.ExpectTrue('Undo.Stack', stack.HasUndo());
  Testing.ExpectTrue('Undo.Stack', !stack.HasRedo());

  stack.Do(Undo.Setter(dict, 'foo', 'baz'));

  Testing.ExpectEqual('Undo.Stack', dict, {'foo': 'baz'});
  Testing.ExpectTrue('Undo.Stack', stack.HasUndo());
  Testing.ExpectTrue('Undo.Stack', !stack.HasRedo());

  stack.Undo();

  Testing.ExpectEqual('Undo.Stack', dict, {'foo': 'bar'});
  Testing.ExpectTrue('Undo.Stack', stack.HasUndo());
  Testing.ExpectTrue('Undo.Stack', stack.HasRedo());

  stack.Redo();
  Testing.ExpectEqual('Undo.Stack', dict, {'foo': 'baz'});
  Testing.ExpectTrue('Undo.Stack', stack.HasUndo());
  Testing.ExpectTrue('Undo.Stack', !stack.HasRedo());

  stack.Undo();
  stack.Undo();
  Testing.ExpectEqual('Undo.Stack', dict, {});

  stack.Redo();
  stack.Redo();
  Testing.ExpectEqual('Undo.Stack', dict, {'foo': 'baz'});

  stack.Undo();
  stack.Undo();
  Testing.ExpectEqual('Undo.Stack', dict, {});

  stack.Do(Undo.Setter(dict, {'foo': 'bing'}));
  Testing.ExpectTrue('Undo.Stack', stack.HasUndo());
  Testing.ExpectTrue('Undo.Stack', !stack.HasRedo());
});

