#ifndef __SWIRLY_UTIL_TEST_FILE
#define __SWIRLY_UTIL_TEST_FILE

function TestFileWriter() {
  this.results = [];

  this.writestring = function(x) {
    this.results.push(x);
  };

  this.writeline = function(x) {
    this.results.push(x + '\n');
  };
};

#endif  // __SWIRLY_UTIL_TEST_FILE
