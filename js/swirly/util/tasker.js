#ifndef __SWIRLY_UTILS_TASKER
#define __SWIRLY_UTILS_TASKER

// Tasker is a function to work around the issue documented in
// http://www.cycling74.com/forums/topic.php?id=22731.
//
// Here's how to use it!
//
// Typically, you would want to use a closure in a Task callback in the
// following manner:
//
//   var a = DoSomething();
//   var b = DoSomethingElse();
//   var task = new Task(function() { DoMyTask(a, b); });
//   task.schedule(1000);  // Do this in one second.
//
// Unfortunately, due to the bug described above, this does not work - when the
// function DoMyTask is executed, a and b are undefined.
//
// Tasker() fixes this problem!
//
//   var a = DoSomething();
//   var b = DoSomethingElse();
//   var task = Tasker(this, DoMyTask, [a, b]);
//   task.schedule(1000);  // or any other "Task" method you like.

function Tasker(object, method, args) {
  // TaskerClass is used to store the object, methods and arguments, so we can
  // make the call later on from a task.
  function TaskerClass() {
    this.object = object;
    this.method = method;
    this.args = args;

    this.Run = function() {
      this.method.apply(this.object, this.args);
    };
    // Interestingly enough, it seems that the variable context here is also
    // not preserved across tasks, so calling
    //
    //    method.apply(object, args);
    //
    // in this.Run() doesn't work either.
  };

  var tasker = new TaskerClass();
  return new Task(tasker.Run, tasker);
};

#endif  // __SWIRLY_UTILS_TASKER
