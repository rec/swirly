#ifndef __SWIRLY_UTILS_TASKER
#define __SWIRLY_UTILS_TASKER

// ContextTask is a function to work around the issue documented in
// http://ax.to/jstasks
//
// Here's how you'd use it!
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
// ContextTask() fixes this problem:
//
//   var a = DoSomething();
//   var b = DoSomethingElse();
//   var task = ContextTask(this, DoMyTask, [a, b]);
//   task.schedule(1000);  // or any other "Task" method you like.

function ContextTask(object, method, args) {
  function Tasker(object, method, args) {
    this.object = object;
    this.method = method;
    this.args = args;

    this.Run = function() {
      this.method.apply(this.object, this.args);
    };
  };

  var tasker = new Tasker(object, method, args);
  return new Task(tasker.Run, tasker);
};

// Tasker exists for historical reasons and is used in legacy code.
function Tasker(object, method, args) {
  this.object = object;
  this.method = method;
  this.args = args;
  this.running = false;  // Perfect for adding a listener to!

  this.Run = function() {
    this.running || this.Execute();
  };

  this.Stop = function() {
    if (this.running) {
      this.task = this.task && this.task.cancel() && this.task.cancel && false;
      this.running = false;
    }
  };

  this.Execute = function() {
    this.Stop();
    this.method.apply(this.object, this.args);
  };

  // Schedule this.Loop to run after a delay.
  this.Schedule = function(delay) {
    this.task = this.NewTask();
    this.task.schedule(delay);
    this.running = true;
    return this.task;
  };

  // This method is overriden in tests.
  this.NewTask = function() {
    return new Task(this.Execute, this);
  };
};

#endif  // __SWIRLY_UTILS_TASKER
