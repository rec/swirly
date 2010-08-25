#ifndef __SWIRLY_TIME__
#define __SWIRLY_TIME__

#include "swirly/midi/midi.js"

// See http://ax.to/swirlytime for more details on these parameters.  Note that
// halfLife, fade and tempo are all ratios - you can think of them as having the
// units of "one loopTime".
function SwirlyTime(loopLength, halfLife, fade, tempo, cc, channel) {
  this.loopLength = loopLength;
  this.halfLife = halfLife;
  this.fade = fade;
  this.tempo = tempo;
  this.timeCoefficient = Math.log(2) / halfLife;
  this.lineGrain = 20;
  this.cc = cc || 1;
  this.channel = channel || 0;
  this.ticScale = 1000.0 / 48.0;

  this.Outlet = MIDI.Outlet(0);

  this.BaseLength = function(time) {
    return (time || 1.0) * this.loopLength * 1000.0 / this.tempo;
  };

  this.Start = function() {
    this.baseTime = 0;
    this.Outlet('cc', this.cc);
    this.Outlet('channel', this.channel);

    this.Outlet('line', 127);
    this.Outlet('line', 0,  this.BaseLength(this.fade) + 1);

    this.Outlet('seq', 'start', -1);
    this.Outlet('seq', 'tick');

    this.Outlet('delay', bang);
  };

  this.TimeScale = function(time) {
    return 2 ** (time / this.halfLife);
  };

  this.Integral = function(time) {
    return this.timeScale(time) * this.timeCoefficient;
  };

  this.Timer = function(time) {
    if (!this.baseTime)
      this.baseTime = time;

    var timescale = this.Integral(time - this.baseTime) / this.ticScale;
    var delta = (Math.ciel(timescale) - timescale) * this.ticScale;
    this.Outlet('delay', delta);
    return delta;
  };
};

#endif  // __SWIRLY_TIME__
