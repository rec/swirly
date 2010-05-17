#ifndef __SWIRLY_UNDO_STACK
#define __SWIRLY_UNDO_STACK

#include "swirly/undo/undo.js"

Undo.Stack = function() {
  var stack = [];
  var length = 0;

  this.HasRedo = function() { return length < stack.length; };
  this.HasUndo = function() { return length; };

  this.Do = function(f) {
    // Slice away any redo information.
    if (this.HasRedo())
      stack = stack.slice(0, length);

    ++length;
    stack.push(f());
  };

  this.Undo = function() {
    if (HasUndo()) {
      --length;
      stack[length] = stack[length]();
    } else {
      post('ERROR: undo stack is empty\n');
    }
  };

  this.Redo = function() {
    if (HasRedo()) {
      stack[length] = stack[length]();
      ++length;
    } else {
      post('ERROR: redo stack is empty\n');
    }
  }
};

#endif  // __SWIRLY_UNDO_STACK
