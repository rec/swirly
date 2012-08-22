#ifndef __SWIRLY_TEMPO_SETTER__
#define __SWIRLY_TEMPO_SETTER__

#include "swirly/midi/midi.js"
#include "swirly/util/int.js"
#include "swirly/util/trim.js"
#include "swirly/util/FileReader.js"

Midi.TempoSetter = function(outs_) {
  var self = this;

  var table_ = {};
  var tableFilename_ = '';
  var tempo_ = 120.0;
  var max_ = 40.0;
  var min_ = 150.0;
  var SCALE = 100.0;

  function line(tempo, time) {
    tempo_ = tempo || tempo_;
    outs_.line(SCALE * tempo_, time || 0);
  };

  self.pc = function(pc) {
    var event = table_.pc[pc];
    outs_.error(!event);
    if (!event) {
      ERROR('No event for', pc);
      return;
    }
    line(tempo_ || event.tempo);
    line(event.tempo, event.time);
  };

  self.cc = function(cc) {
    var min = table_.min || DEFAULT_MIN;
    var max = table_.max || DEFAULT_MAX;

    line(min + (max - min) * (Util.toInt(cc) / 127.0));
  };

  // TODO: integrate with noteDelay.
  function setByFileName(name) {
    var nt = name && name.length && FileReader.ReadJson(name);
    if (!nt)
      Postln("Couldn't read", name);

    outs_.error(!!nt);
    return nt;
  };

  self.text = function(filename, reload) {
    var table = setByFileName(filename);
    if (table) {
      table_ = table;
      tableFilename_ = filename;
    }
    outs_.error(!table);
  };

  self.reload = function() {
    self.text(tableFilename_, true);
  };
};

#endif  // __SWIRLY_TEMPO_SETTER__