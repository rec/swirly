#ifndef __SWIRLY__SOFTSTEP__SCROLL
#define __SWIRLY__SOFTSTEP__SCROLL

#include "swirly/softstep/softstep.js"

// This is in fact a "general" scroller that works for any sort of
// device where you can scroll a portion of the
// config is a dictionary that can have the following properties:
//   delta:    how to scroll - +1 is forward, -1 backward
//   execute:  a callback function that computes the scrolling string and sends
//             it to Max (probably sending it to an outlet).
//   freeze:   freeze the display on stop, or back to offset 0 (default false).
//   message:  the message to scroll (default '').
//   period:   the delay between scroll increments, in ms (default 500).

Softstep.Scroller = function(config) {
  this.config = config || {};

  this.Start = function() {
    this.Stop();

    this.offset = 0;
    this._Execute();
    this.task = this._NewTask();
  };

  this.Stop = function() {
    this.task && this.task.cancel();
    this.task = null;
    if (!this.config.freeze) {
      this.offset = 0;
      this._Execute();
    }
  };

  this.SetMessage = function(m) {
    this.config.message = m;
    this.offset = 0;
    this._Execute();
  };

  this.SetPeriod = function(p) {
    p = parseInt(p);
    this.config.period = p;
    if (this.task)
      this.task.interval = p;
  };

  this._Execute = function() {
    this.config.execute && this.config.execute(this._Display());
  };

  // Length of the scrollable message (right-padded to fit the display).
  this._Length = function() {
    return Math.max(this._DisplayLength(), this.config.message.length);
  };

  // Length of the scroll display.
  this._DisplayLength = function() {
    return this.config.displayLength || Softstep.Scroller.defaultDisplayLength;
  };

  this.Period = function() {
    return Math.max(Softstep.Scroller.minimumPeriod,
                    this.config.period || Softstep.Scroller.defaultPeriod);
  };

  this._NewTask = function() {
    var t = new Task(this._Run, this);
    t.interval = this.Period();
    t.repeat(this.config.repeat * this._Length(), t.interval);
    return t;
  };

  // The string representing the display, always exactly _DisplayLength() long.
  this._Display = function() {
    var m = this.config.message || '';
    var len = this._DisplayLength();
    while (m.length < len)  // Only good if len is not large.
      m += ' ';
    m += ' ';
    return (m + m).substring(this.offset, this.offset + len);
  };

  this._Increment = function() {
    this.offset += (this.config.delta || 1);
    var length = this._Length();

    if (this.offset < 0)
      this.offset = length - 1;

    else if (this.offset > length)
      this.offset = 0;
  };

  this._Run = function() {
    this._Increment();
    this._Execute();
  };
};

Softstep.Scroller.defaultDisplayLength = 4;
Softstep.Scroller.defaultPeriod = 200;
Softstep.Scroller.minimumPeriod = 20;

// I've taken Softstep.Scroller.minimumPeriod as low as 1 with no ill effects
// BUT the company warns you might brick your pedal.  BEWARE SETTING THIS TOO
// LOW.

#endif  // __SWIRLY__SOFTSTEP__SCROLL
