#ifndef __SWIRLY__SOFTSTEP__INITIALIZE
#define __SWIRLY__SOFTSTEP__INITIALIZE

#include "swirly/softstep/softstep.js"

// Initialize the softstep, callback a function when it's done.
Softstep.Initialze = function(callback, interval) {
  function Initializer() {
    this.callback = callback;
    this.interval = interval || 300;
    this.commands = [
      ['appInitialized'],
      ['standalone', 'off'],
      ['tether', 'on']];

    this.Run = function() {
      this.execute(this.commands.shift());
      if (this.commands.length) {
        new Task(this.Run, this).schedule(this.interval);
      } else {
        print('Softstep initialized');
        this.callback && this.callback();
      }
    };

  new Initializer().Run();
};

#endif  // __SWIRLY__SOFTSTEP__INITIALIZE
