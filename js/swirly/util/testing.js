#ifndef __SWIRLY_UTIL_TESTING
#define __SWIRLY_UTIL_TESTING

#include "swirly/util/compare.js"
#include "swirly/util/print.js"

// Util.Testing is a class to run a series of tests and count the successes
// and failures.
Util.Testing = function() {
  var test_count;
  var fail_count;
  var name_map;
  var functions = [];

  function Reset() {
    Testing.results = [];
    Testing.verbose = false;  // true
    Testing.verbose_compare = true;

    test_count = 0;
    fail_count = 0;
    name_map = {};
  };

  function Start(name) {
    var count = (name in name_map) ? (name_map[name] + 1) : 1;
    name_map[name] = count;
    if (Testing.verbose)
      post('Test:', name, count, '\n');

    ++test_count;
  };

  function Fail(name, results, expected) {
    ++fail_count;
    post('FAIL:', name, name_map[name], '\n');
    post('Actual result:', Print(results).slice(0, 255), '\n');
    post('Expect result:',  Print(expected).slice(0, 255), '\n');
  };

  var functions = [];

  function Reset() {
    Testing.results = [];
    Testing.verbose = false;  // true
    Testing.verbose_compare = true;

    test_count = 0;
    fail_count = 0;
    name_map = {};
  };

  function Start(name) {
    var count = (name in name_map) ? (name_map[name] + 1) : 1;
    name_map[name] = count;
    if (Testing.verbose)
      post('Test:', name, count, '\n');

    ++test_count;
  };

  function Fail(name, results, expected) {
    ++fail_count;
    post('FAIL:', name, name_map[name], '\n');
    post('Actual result:', Print(results).slice(0, 255), '\n');
    post('Expect result:',  Print(expected).slice(0, 255), '\n');
  };

  // This isn't quite the same as ExpectEqual(..., true) because it matches all
  // non-null things.
  this.ExpectTrue = function(name, results) {
    return this.ExpectEqual(name, !!results, true);
  };

  this.ExpectEqual = function(name, results, expected) {
    Start(name);
    return Util.Compare(results, expected) || Fail(name, results, expected);
  };

  this.TestFunction = function(f) {
    functions.push(f);
  };

  this.ExpectFunction = function(name, f, target, data, expected, side_effect) {
    Start(name);
    if (side_effect)
      Testing.results = [];

    var results;
    try {
      results = f.apply(target, data);
      if (side_effect)
        results = Testing.results;

      if (Util.Compare(results, expected))
        return true;
    } catch (e) {
      results = e.name + ': ' + e.message + ' at line ' + e.lineNumber;
    }
    return Fail(name, results, expected);
  };

  this.Run = function() {
    post('--- start\n');
    Reset();

    for (var i = 0; i < functions.length; ++i)
      functions[i]();

    if (fail_count)
      post(fail_count, 'tests in', test_count, 'FAILED.');
    else
      post('\nAll', test_count, 'tests succeeded.');

    post('\n--- end\n');
    post('---\n');
  };
};

var Testing = new Util.Testing();


#endif  // __SWIRLY_UTIL_TESTING
