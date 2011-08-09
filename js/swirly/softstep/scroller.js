#ifndef __SWIRLY__SOFTSTEP__SCROLL
#define __SWIRLY__SOFTSTEP__SCROLL

#include "swirly/softstep/softstep.js"

// message, period, direction, loops, type
Softstep.Scroller = function(args) {
  this.args = args || {};

  this.Render = function() {
    this.args.render &&
      this.args.render(this.message.substring(this.offset,
                                              this.offset + 4));
  };

  this.Increment = function() {
    var delta = this.args.reverse ? -1 : 1;
    this.offset += delta;

    if (this.offset < 0)
      this.offset = this.length - 1;

    else if (this.offset > this.length)
      this.offset = 0;
  };

  this.TaskCallback = function() {
    this.task.interval = this.args.period || 500;
    this.Increment();
    this.Render();
  };

  this.Start = function() {
    this.Stop();
    var m = this.args.message;
    if (m.length < 4)
      m = (m + '    ').substring(0, 4);
    else
      m += ' ';

    this.length = m.length - 1;
    this.message = m + m;
    this.offset = 0;

    this.Render();
    this.task = new Task(this.TaskCallback, this);
    this.task.interval = this.args.period || 500;
    this.task.repeat(this.args.repeat * this.length,
                     this.task.interval);
  };

  this.Stop = function() {
    this.task && this.task.cancel();
    this.task = null;
  };
};

#endif  // __SWIRLY__SOFTSTEP__SCROLL
