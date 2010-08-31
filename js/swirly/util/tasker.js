#ifndef __SWIRLY_UTILS_TASKER
#define __SWIRLY_UTILS_TASKER

// Tasker is a  class with a single method, Run, that applies the given function
// with the given "this" and args.
//
// Tasker works around the issue documented in http://ax.to/jstasks
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
// The Tasker class fixes this problem:
//
//   var a = DoSomething();
//   var b = DoSomethingElse();
//   var task = new Tasker(this, DoMyTask, [a, b]);
//   task.Schedule(1000);
//
// Please note that as I write this, I realize that I have only written this
// Tasker class to work well with "one-shot" tasks - tasks that happen once and
// not again - and not tasks that use "repeat".
//
// It will be pretty easy to fix it to be more general, and I'll do this soon.

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
      this.task = this.task && this.task.cancel() && false;
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
