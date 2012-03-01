#ifndef __SOFTSTEP__ENABLE
#define __SOFTSTEP__ENABLE

#include "swirly/softstep/softstep.js"

Softstep.Enable = function(output) {
  var self = this;

  var sysex = {
    standalone: {
      off: [
        'sysex', 240, 0, 27, 72, 122, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 9,
        0, 11, 43, 58, 0, 16, 4, 0, 0, 0, 0, 0, 0, 0, 0, 23, 31, 0, 0, 0, 0, 0,
        247],

      on: [
        'sysex', 240, 0, 27, 72, 122, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 9,
        0, 11, 43, 58, 0, 16, 4, 1, 0, 0, 0, 0, 0, 0, 0, 47, 126, 0, 0, 0, 0, 2,
        247],
    },

    tether: {
      off: [
        'sysex', 240, 0, 27, 72, 122, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 9,
        0, 11, 43, 58, 0, 16, 3, 0, 0, 0, 0, 0, 0, 0, 0, 80, 7, 0, 0, 0, 0, 0,
        247],

      on: [
        'sysex', 240, 0, 27, 72, 122, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 9,
        0, 11, 43, 58, 0, 16, 3, 1, 0, 0, 0, 0, 0, 0, 0, 104, 102, 0, 0, 0, 0, 0,
        247],
    },

    el: {
      off: [
        'sysex', 240, 0, 27, 72, 122, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 0,
        5, 8, 37, 0, 32, 0, 0, 76, 28, 0, 0, 0, 12, 247],
      on: [
        'sysex', 240, 0, 27, 72, 122, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 0,
        5, 8, 37, 1, 32, 0, 0, 123, 44, 0, 0, 0, 12, 247],
    }
  };

  function Enable(name, en) {
    var sys = sysex[name];
    if (!sys) {
      post('Sofstep.Enable: Cannot enable "' + name + '"\n');
      return;
    }

    var e = sys[en];
    if (!e) {
      post('Softstep.Enable: enabled should be on or off, not "' + en + '"\n');
      return;
    }
    output.apply(this, e);
  };

  self.El = function(e) { Enable('el', e); }
  self.Standalone = function(e) { Enable('standalone', e); }
  self.Tether = function(e) { Enable('tether', e); }
};

#endif // __SOFTSTEP__ENABLE
