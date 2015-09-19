#ifndef __SWIRLY_UTIL_TESTING
#define __SWIRLY_UTIL_TESTING

#include "swirly/util/compare.js"
#include "swirly/util/print.js"

// Util.Testing is a class to run a series of tests and count the successes
// and failures.
Util.Testing = function() {
    var test_count,
        fail_count,
        name_map,
        functions = [],
        self = this;

    function Reset() {
        Testing.results = [];
        Testing.verbose = false;  // true;
        Testing.verbose_compare = false;  // true;

        test_count = 0;
        fail_count = 0;
        name_map = {};
    };

    function Start(name) {
        var count = (name in name_map) ? (name_map[name] + 1) : 1;
        name_map[name] = count;
        if (Testing.verbose)
            print('Test:', name, count);

        ++test_count;
    };

    function fail(name, results, expected) {
        ++fail_count;
        print('FAIL:', name || self.name);
        print('Actual result:', Print(results).slice(0, 255));
        print('Expect result:',  Print(expected).slice(0, 255));
    };

    // This isn't quite the same as ExpectEqual(..., true) because it matches all
    // non-null things.
    this.ExpectTrue = function(name, results) {
        return self.ExpectEqual(name, !!results, true);
    };

    this.ExpectEqual = function(name, results, expected) {
        Start(name);
        return Util.Compare(results, expected) || fail(name, results, expected);
    };

    this.ExpectClose = function(name, results, expected, delta) {
        if (delta == undefined)
            delta = 0.001;
        return self.ExpectTrue(name, Math.abs(results - expected) <= delta);
    };

    this.TestFunction = function(f) {
        functions.push(f);
    };

    this.ExpectF = function(name, data, expected, side_effect) {
        return Testing.ExpectFunction(name, eval(name), this, data, expected,
                                      side_effect);
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
        return fail(name, results, expected);
    };

    this.Outlet = function(_) {
        Testing.results.push(arrayfromargs(arguments));
    };

    this.Run = function() {
        print('--- start');
        Reset();

        for (var i = 0; i < functions.length; ++i)
            functions[i](self);

        if (fail_count)
            print(fail_count, 'tests in', test_count, 'FAILED.');
        else
            print('All', test_count, 'tests succeeded.');

        print('--- end');
        print('---');
    };

    this.ExpectThrows = function(name, f, args, expected) {
        var success = false;
        try {
            f.apply(this, args || []);
        } catch (results) {
            success = true;
            if (expected !== undefined && expected !== results)
                fail(name, results, expected);
        }
        if (!success)
            fail(name, '(no exception)', expected);
    };

    this.name = '(not set)';

    function makeMessage(message) {
        return message ? (this.name + ': ' + message) : this.name;
    };

    this.expectEqual = function(results, expected, message) {
        self.ExpectEqual(makeMessage(message), results, expected);
    };

    this.expectThrows = function(f, args, expected, message) {
        self.ExpectThrows(makeMessage(message), f, args, expected);
    };

    this.testFunction = function(name, func) {
        self.TestFunction(function() {
            self.name = name;
            func();
        });
    };
};

var Testing = new Util.Testing();

#endif  // __SWIRLY_UTIL_TESTING
