#ifndef __SWIRLY_UTILS_TASKER
#define __SWIRLY_UTILS_TASKER

// ContextTask is a function to work around the issue documented in
// http://ax.to/jstasks
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
//   var task = ContextTask(this, DoMyTask, [a, b]);
//   task.schedule(1000);  // or any other "Task" method you like.

function Tasker(object, method, args) {
  function TaskerClass(object, method, args) {
    this.object = object;
    this.method = method;
    this.args = args;

    this.Run = function() {
      this.method.apply(this.object, this.args);
    };
  };

  var tasker = new TaskerClass(object, method, args);
  return new Task(tasker.Run, tasker);
};

#endif  // __SWIRLY_UTILS_TASKER
