#ifndef __UTIL__SPEEDLIM
#define __UTIL__SPEEDLIM

#include "swirly/util/util.js"

Util.minimumSpeedLimit = 1;  // 1 millisecond

Util.Speedlimit = function(outputCallback, queueSizeCallback, limit) {
  var that = this;

  that.queue = [];
  that.outputCallback = outputCallback;
  that.queueSizeCallback = queueSizeCallback;

  function Callback() {
    that.queue.shift();
    that.queueSizeCallback(that.queue.length);
    if (that.queue.length) {
      that.outputCallback(that.queue[0]);
      that.task.schedule(that.limit);
    };
  };

  that.task = new Task(Callback, that);
  that.task['function']();

  that.SetLimit = function(limit) {
    that.limit = Math.max(limit || 0, Util.minimumSpeedLimit);
  };

  that.Clear = function() {
    that.queue = [];
  };

  that.Output = function(input) {
    that.queue.push(input);
    that.queueSizeCallback(that.queue.length);
    if (that.queue.length == 1) {
      that.outputCallback(input);
      that.task.schedule(that.limit);
    }
  };

  that.SetLimit(limit);
};

#endif  // __UTIL__SPEEDLIM
