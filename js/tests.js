// All Javascript unit tests are included from this file.
//
// To run these tests in OS/X you need to have GNU Compiler Collection for OS/X,
// free software that every developer should have and that you can download from
// http://developer.apple.com/tools/gcc_overview.html
//
// Open a terminal window and cd to the root of this project.  Now type:
//    make -k
//
// You should see a response like:
//    gcc -E -P -C -x c -iquote js js/tests.js -o tests.jso
//
//    Compilation finished at Mon May 17 17:25:35
//
// If there's a problem you might see something like:
//    js/tests.js:18:35: error: swirly/util/testinge.js: No such file or directory
//    make: *** [tests.jso] Error 1
//    make: Target `all' not remade because of errors.
//
//    Compilation exited abnormally with code 2 at Mon May 17 17:24:34
//
// Once your program is built without errors, type:
//    open tests.maxpat
//
// This will open a patch calls tests in Max/MSP.
//
// Now you're in Max, open Max's Message window by pressing Command-M, and press
// the x on its bottom left-hand corner to clear it.
//
// Finally, click on the button marked "test" in the Max patch "test".
// If everything worked, you should see a message in the Message screen
// looking like:
//     js: --- start
//     js: All 16  tests succeeded.
//     js: --- end
//     js: ---
//
// An error might look like:
//     js: Util.Compare:  lengths differ  2  1
//     js: Util.Compare:  item  0  1
//     js: Util.Compare:  item  1  2
//     js: FAIL:  Array.concat  4
//     js: Actual result:  [1, 2]
//     js: Expect result:  [1]
//     js: 1  tests in  16  FAILED.
//     js: --- end
//     js: ---

autowatch = 1;

#include "swirly/util/testing.js"

// Unit tests start here.  Each subdirectory has a file called "tests.js" that
// lists all the active tests in that directory.
#include "swirly/array/tests.js"
#include "swirly/functional/tests.js"
#include "swirly/live/tests.js"
#include "swirly/undo/tests.js"
#include "swirly/util/tests.js"

function test() {
  Testing.Run();
};

post('recompiled test.js');