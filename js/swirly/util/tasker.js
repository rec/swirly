#ifndef __SWIRLY_UTILS_TASKER
#define __SWIRLY_UTILS_TASKER

// Tasker is a  class with a single method, Run, that applies the given function
// with the given "this" and args.
//
// Tasker works around the issue documented in
// http://tinyurl.com/max-js-task-destroys-closures.
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
