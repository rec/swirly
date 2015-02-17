// This is the new one.

// This is /development/swirly/js/test.js
// in      /development/swirly/test.maxpat

// I have tiny scripts in:
//         /development/swirly/example.js
//         /development/swirly/js/example.js
//         /development/swirly/js/test/example.js

autowatch = 1;

function test_require(path) {
    var loc = require(path).location;
    post(path, ': ', loc ? loc : 'no', '\n');
};

// All three absolute paths work.
test_require('/development/swirly/example.js');
test_require('/development/swirly/js/example.js');
test_require('/development/swirly/js/test/example.js');

// No relative path seems to work.
test_require('swirly/js/test/example.js');
test_require('js/test/example.js');
test_require('test/example.js');
test_require('example.js');

test_require('./swirly/js/test/example.js');
test_require('./js/test/example.js');
test_require('./test/example.js');
test_require('./example.js');

test_require('../swirly/js/test/example.js');
test_require('../js/test/example.js');
test_require('../test/example.js');
test_require('../example.js');


// Now let's try it without .js.
//
// These next three don't work either, but they should:
// see: http://wiki.commonjs.org/wiki/Modules/1.1#Module_Identifiers
// which seems to indicate that the .js suffix is not just optional
// but forbidden?

test_require('/development/swirly/example');
test_require('/development/swirly/js/example');
test_require('/development/swirly/js/test/example');

// No relative path seems to work.
test_require('swirly/js/test/example');
test_require('js/test/example');
test_require('test/example');
test_require('example');

test_require('./swirly/js/test/example');
test_require('./js/test/example');
test_require('./test/example');
test_require('./example');
