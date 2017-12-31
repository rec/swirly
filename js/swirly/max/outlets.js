#pragma once

#include "swirly/max/max.js"
#include "swirly/util/string.js"

// Max.SetOutlets sets the names and thus the number of outlets for your Max js
// box.
//
// A sample call looks like:
//
//    Max.SetOutlets('midi',
//                   ['synth', 'Messages to the synthesis subpatcher.'],
//                   ['finished', 'Outlets a bang when the song is finished.']);
//
// or more generally, like this:
//
//    Max.SetOutlets(out1, out2, ...);
//
// Each name argument can either be a string, or a list of two strings.  For
// each argument, the name of the corresponding outlet is the first string, and
// the help text is the second string, if there is one, or else the name of the
// outlet.
//
//    You should only call this function once, and you have to call it during
// the "top-level phase" when the Javascript is first being executed and before
// the box is actually created - if you try to call this later, nothing will
// fail, but you won't get the right number of outlets from the js box.
//
// Once you've called
// If you start with:
//
//   Max.SetOutlets('foo', 'bar', 'baz');
//
// then the following code blocks have identical meaning, and all send the
// message ['hello', 'world'] out the first outlet, named foo, and the message
// ['hello', 'there!'] and ['goodbye!' out the second Max outlet, named bar:
//
//   {
//     Max.Out('foo', 'hello', 'world');
//     Max.Out('bar', 'hello', 'there!');
//     Max.Out('bar', 'goodbye!');
//   }
//
//   {
//     Max.Out.foo('hello', 'world');
//     Max.Out.bar('hello', 'there!');
//     Max.Out.bar('goodbye!');
//   }
//
//   {
//     Max.ListOut(['foo', 'hello', 'world'],
//                 ['bar', 'hello', 'there!'],
//                 ['bar', 'goodbye!']);
//   }
//
//   {
//     Max.ListOut.foo(['hello', 'world']);
//     Max.ListOut.bar(['hello', 'there!'], ['goodbye!']);
//   }
//
//   {
//     var func = Max.Outer(['foo', 'hello', 'world'],
//                          ['bar', 'hello', 'there!'],
//                          ['bar', 'goodbye!']);
//     func();
//   }
//
//   {
//     var func1 = Max.Outer.foo(['hello', 'world']);
//     var func2 = Max.Outer.bar(['hello', 'there!'], ['goodbye!']);
//
//     func1();
//     func2();
//   }
//

Max._outlets = {};

// Outlet to a named outlet.  You can still use the numbered outlets, too.
// You can override this in tests if you want to capture the MIDI output.
//
Max.Outlet = function(outletNumber, data) {
  if (Max._outlets && outletNumber in Max._outlets)
    outletNumber = Max._outlets[outletNumber];
  outlet(outletNumber || 0, data);
};

Max.Out = function(out, _) {
  Max.Outlet(out, arrayfromargs(arguments).slice(1));
};

Max.ListOut = function(args) {
  for (var i = 0; i < args.length; ++i)
    Max.Outlet(args[i][0], args[i].slice(1));
};

Max.Outer = function(_) {
  var args = arguments;
  return function() {
    for (var i = 0; i < arguments.length; ++i)
      Max.Outlet(arguments[i][0], arguments[i].slice(1));
  };
};

Max.SetOutlets = function(_) {
  outlets = arguments.length;
  Max._outlets = {};
  for (var i = 0; i < arguments.length; i++) {
    var name = arguments[i], help = name;
      if (!isString(name)) {
      help = name[1] || name;
      name = name[0];
    }

    Max._outlets[name] = i;
    setoutletassist(i, help);
    var f = Max.OutletFunction(i);
    f.Partial = function(_) {
      var args = arrayfromargs(arguments);
      return function(_) {
        var a = args.concat(arrayfromargs(arguments));
        return f.apply(this, a);
      };
    };
    Max.Out[name] = f;

    Max.ListOut[name] = Max.OutletListFunction(i);
    Max.Outer[name] = Max.OutletFunctionMaker(i);
  }
};

//
// Implementation details below here!
//

// Returns a function that sends its arguments as a message to a given outlet.
Max.OutletFunction = function(out) {
  return function(_) {
    outlet(out, arrayfromargs(arguments));
  };
};

// Returns a function that sends its arguments as separate messages to a given
// outlet.
Max.OutletListFunction = function(out) {
  return function(_) {
    for (var i = 0; i < arguments.length; ++i)
      outlet(out, arguments[i]);
  };
};

// Returns a function that sends its arguments as separate messages to a given
// outlet.
Max.OutletFunctionMaker = function(out) {
  return function(messages) {
    return function() {
      for (var i = 0; i < messages.length; ++i)
        outlet(out, messages[i]);
    }
  };
};
