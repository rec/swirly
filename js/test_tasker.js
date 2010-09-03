autowatch = 1;

#include "swirly/util/print.js"
#include "swirly/util/tasker.js"
#include "swirly/util/compare.js"

var results;
var pass;

function test() {
  var x = 1;
  var y = 2;
  pass = 0;
  results = null;

  new Task(function() { results = [x, y]; }, this).schedule(1);
  outlet(0, 10);
};

function bang() {
  if (pass == 0) {
    post('classic tasker', results ? 'ok' : 'FAILS!', '\n');
    Tasker(this, function(x, y) { results = [x, y]; }, [1, 2]).schedule(1);

    outlet(0, 10);
  }

  if (pass == 1)
    post('new Tasker', Util.Compare(results, [1, 2]) ? 'ok' : 'FAILS!', '\n');

  results = null;
  ++pass;
};

post('recompiled test_tasker.js');