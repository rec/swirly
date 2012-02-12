// This JS code shows that Task does not keep variable contexts and shows the
// simplest workaround, which simply uses the third argument to the Tasks
// constructor.

autowatch = 1;

var res = null;  // Results go here.
var pass = 0;    // Which pass through the tests?

function SetResult(x, y) {
  res = [x, y];
};

function anything() {
  if (pass == 0) {
    // Create a task and try to use the local variable context - BUT
    // unfortunately when the task is called, x and y will be undefined:
    // DOESN'T WORK.
    var x = 1;
    var y = 2;
    new Task(function() { SetResult(x, y); }, this).schedule(1);

  } else if (pass == 1) {
    // Check the result!
    post('context ', res ? 'ok' : 'FAILS!', '\n');

    // Create a task by passing explicit arguments to the constructor of Task.
    // This works!
    new Task(SetResult, this, 1, 2).schedule(1);

  } else {
    // Check the result!
    var s = res && (res.length == 2) && (res[0] == 1) && (res[1] = 2);
    post('arguments', s ? 'ok' : 'FAILS!', '\n');

    // We're done.
    pass = 0;
    return;
  }

  outlet(0, 10);
  res = null;
  ++pass;
};

post('recompiled test_tasker.js');