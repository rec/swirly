#ifndef __SWIRLY_MAX_INOUT__
#define __SWIRLY_MAX_INOUT__

#include "swirly/max/max.js"
#include "swirly/util/string.js"

// Max.Out gets filled in when you call Max.Outlets, so you can do things like:
//
//   Max.SetOutlets('foo', 'bar', 'baz');
//   Max.Out.bar('hello', 'world');
//
// and send the message ['hello', 'world'] out the second Max outlet, named bar.
//
Max.Out = {};

// Max.ListOut is similar to Max.Out, except that it expects lists:
//
//   Max.SetOutlets('foo', 'bar', 'baz');
//   Max.ListOut.foo(['message', 'here'], ['anotherMessage', 'there']);
//
// which sends two messages to the first Max outlet, named foo.
//
Max.ListOut = {};

// Max.SetOutlets sets the names and thus the number of outlets for your Max Javascript
// box.  You can only call this function once, and you have to call it during
// the "top-level phase" when the Javascript is first being executed and before
// the box is actually created - if you try to call this later, nothing will
// fail, but you won't get the right number of outputs from the box.
//
// It's called like this:
//
//    Max.SetOutlets('midi',
//                   ['synth', 'Messages to the synthesis subpatcher.'],
//                   ['finished', 'Outlets a bang when the song is finished.']);
//
// or more generally, like this:
//
//    Max.SetOutlets(name1, name2, ...);
//
// Each name argument can either be a string, or a list of two strings.  For
// each argument, the name of the corresponding outlet is the first string, and
// the help text is the second string, if there is one, or else the name of the
// outlet.
//
Max.SetOutlets = function(_) {
  outlets = arguments.length;
  Max._outlets = {};
  for (var i = 0; i < arguments.length; i++) {
    var name = arguments[i], help = name;
    if (!Util.IsString(name)) {
      name = name[0];
      help = name[1] || name;
    }

    Max._outlets[name] = i;
    setoutletassist(i, help);
    Max.Out[name] = Max.OutletFunction(i);
    Max.ListOut[name] = Max.OutletListFunction(i);
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
  return function(messages) {
    for (var i = 0; i < messages.length; ++i)
      outlet(out, messages[i]);
  };
};

Max._outlets = {};

// DEPRECATED
//
// Outlet to a named outlet.  You can still use the numbered outlets, too.
// You can override this in tests.

Max.Outlet = function(outletNumber, data) {
  if (Max._outlets && outletNumber in Max._outlets)
    outletNumber = Max._outlets[outletNumber];
  outlet(outletNumber || 0, data);
};


#endif  // __SWIRLY_MAX_INOUT__
