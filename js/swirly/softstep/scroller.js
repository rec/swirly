#ifndef __SWIRLY__SOFTSTEP__SCROLL
#define __SWIRLY__SOFTSTEP__SCROLL

#include "swirly/softstep/softstep.js"

// This is in fact a "general" scroller that works for any sort of
// device where you can scroll a portion of the
// config is a dictionary that can have the following properties:
//   delta:    how to scroll - +1 is forward, -1 backward
//   message:  the message to scroll (default '').
//   period:   the delay between scroll increments, in ms (default 500).
//   render:   a callback function that takes the scrolling string and renders
//             it to Max (probably sending it to an outlet).

Softstep.Scroller = function(config) {
  this.config = config || {};

  this.Start = function() {
    this.Stop();

    this.offset = 0;
    this._Render();
    this.task = this._NewTask();
  };

  this.Stop = function() {
    this.task && this.task.cancel();
    this.task = null;
  };

  this.Render = function() {
    var msg = this._Message();
    this.config.render && this.config.render(msg);
    return msg;
  };

  this.Update = function(config) {
    config = config || {};
    for (var i in config)
      this.config[i] = config[i];
  };

  this._Length = function() {
    return Math.max(this._DisplayLength(), this.config.message.length);
  };

  this._DisplayLength = function() {
    return this.config.displayLength || 4;
  };

  this._Interval = function() {
    return Math.max(10, this.config.period || this.config.interval || 500);
  };

  this._NewTask = function() {
    var t = new Task(this._Run, this);
    t.interval = this._Interval();
    t.repeat(this.config.repeat * this._Length(), t.interval);
    return t;
  };

  this._Message = function() {
    var m = this.config.message || '';
    var len = this._DisplayLength();
    while (m.length < len + 1)  // Only good if len is not large.
      m += ' ';

    return (m + m).substring(this.offset, this.offset + len);
  };

  this._Increment = function() {
    this.offset += (this.config.delta || 1);

    if (this.offset < 0)
      this.offset = this.length - 1;

    else if (this.offset > this.length)
      this.offset = 0;
  };

  this._Run = function() {
    this.task.interval = this._Interval();
    this._Increment();
    this._Render();
  };
};

#endif  // __SWIRLY__SOFTSTEP__SCROLL
