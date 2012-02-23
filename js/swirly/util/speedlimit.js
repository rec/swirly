#ifndef __UTIL__SPEEDLIM
#define __UTIL__SPEEDLIM

#include "swirly/util/util.js"

Util.minimumSpeedLimit = 1;  // 1 millisecond

Util.Speedlimit = function(outputCallback, queueSizeCallback, limit) {
  this.queue = [];
  this.outputCallback = outputCallback;
  this.queueSizeCallback = queueSizeCallback;

  function Callback() {
    this.queue.shift();
    this.queueSizeCallback(this.queue.length);
    if (this.queue.length) {
      this.outputCallback(this.queue[0]);
      this.task.schedule(this.limit);
    };
  };

  this.task = new Task(Callback, this);
  var that = this;

  this.SetLimit = function(limit) {
    that.limit = Math.max(limit || 0, Util.minimumSpeedLimit);
  };

  this.Clear = function() {
    that.queue = [];
  };

  this.Output = function(input) {
    that.queue.push(input);
    that.queueSizeCallback(that.queue.length);
    if (that.queue.length == 1) {
      that.outputCallback(input);
      that.task.schedule(that.limit);
    }
  };

  this.SetLimit(limit);
};

#endif  // __UTIL__SPEEDLIM
