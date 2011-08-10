#ifndef __SWIRLY__SOFTSTEP__SCROLL
#define __SWIRLY__SOFTSTEP__SCROLL

#include "swirly/softstep/softstep.js"

// A "general" scroller that works for any sort of device where you can scroll a
// portion a string in a fixed character width display.
//
// The config is a dictionary that can have the following properties:
//   callback: this function is called when the last loop executes.
//   delta: how to scroll - +1 is forward, -1 backward
//   execute: a callback function that computes the scrolling string and sends
//            it to Max (probably sending it to an outlet).
//   freeze: freeze the display on stop, or back to offset 0 (default false).
//   message: the message to scroll (default '').
//   period: the delay between scroll increments, in ms (default 200).

Softstep.Scroller = function(config) {
  this.config = config || {};
  this.task = new Task(this._Run, this);
};

Softstep.Scroller.defaultDisplayLength = 4;
Softstep.Scroller.defaultPeriod = 200;
Softstep.Scroller.minimumPeriod = 20;

// I've taken Softstep.Scroller.minimumPeriod as low as 1 with no ill effects
// BUT the company warns you might brick your pedal.  BEWARE SETTING THIS TOO
// LOW.

Softstep.Scroller.prototype = {
  //
  // Public methods.
  //

  Start: function() {
    this.Stop();
    this.loops = this.offset = 0;
    this._Execute();
    this._Schedule();
  },

  Stop: function() {
    this.task.cancel();
    if (!this.config.freeze) {
      this.offset = 0;
      this._Execute();
    }
  },

  SetMessage: function(m) {
    this.config.message = m;
    this.offset = 0;
    this.loops = 0;
    this._Execute();
  },

  SetPeriod: function(p) {
    p = parseInt(p);
    this.config.period = p;
    if (this.task)
      this.task.interval = p;
  },

  //
  // Private methods.
  //
  _Run: function() {
    var running = this._Increment();
    this._Execute();
    if (running)
      this._Schedule();
    else
      this.config.callback && this.config.callback(this);
  },

  _Schedule: function() {
    var period = Math.max(this.config.period || Softstep.Scroller.defaultPeriod,
                          Softstep.Scroller.minimumPeriod);
    this.task.schedule(period);
  },

  _Execute: function() {
    this.config.execute && this.config.execute(this._Display());
  },

  // The string representing the display, always exactly _DisplayLength() long.
  _Display: function() {
    var m = this.config.message || '';
    var len = this._DisplayLength();
    while (m.length < len)  // Only good if len is not large.
      m += ' ';
    m += ' ';
    return (m + m).substring(this.offset, this.offset + len);
  },

  _Increment: function() {
    this.offset += (this.config.delta || 1);
    if (this.offset < 0)
      this.offset = this._Length() - 1;
    else if (this.offset > this._Length())
      this.offset = 0;
    else
      return true;

    ++this.loops;
    return !this.config.loops || this.loops < this.config.loops;
  },

  // Length of the scrollable message (right-padded to fit the display).
  _Length: function() {
    return Math.max(this._DisplayLength(), this.config.message.length);
  },

  // Length of the scroll display.
  _DisplayLength: function() {
    return this.config.displayLength || Softstep.Scroller.defaultDisplayLength;
  }
};

#endif  // __SWIRLY__SOFTSTEP__SCROLL
