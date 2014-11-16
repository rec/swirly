#ifndef __SWIRLY_NOTE_MAPPER__
#define __SWIRLY_NOTE_MAPPER__

#include "swirly/midi/noteNames.js"
#include "swirly/util/error.js"
#include "swirly/util/logging.js"
#include "swirly/util/print.js"
#include "swirly/util/int.js"
#include "swirly/util/trim.js"
#include "swirly/util/FileReader.js"

var USE_NOTE_OFF_TABLE = !false;

Midi.NoteMapper = function(outs_) {
  var noteTable_ = {};  // Map notes to events or lists of events.
  var midiThrough_ = true;
  var mapFile_ = '';
  var tableName_ = '';
  var noteTableMap_ = {};  // Map from table names to note tables.

  this.selectTable = function(name) {
    tableName_ = name;
    noteTable_ = noteTableMap_[tableName_];
    outs_.ready(!!noteTable_);
  };

  function emitEvent(event, note, velocity) {
    var n = event.note;
    if (n === undefined) {
      ERROR('Event without note', event);
      continue;
    }

    var delay = event.delay;
    var len = event.length;
    Postln(event, n, delay, len);
    if (delay) {
      outs_.delay(delay);
      if (!len)
        outs_.pipenote(n, velocity);
      else if (velocity)
        outs_.pipemakenote(n, velocity, len);
    } else {
      if (!len)
        outs_.note(n, velocity);
      else if (velocity);
        outs_.makenote(n, velocity, len);
    }
  };

  this.noteIn = function(note, velocity) {
    var events = noteTable_[note];
    if (events) {
      if (!events[0])  // A singleton.
        events = [events];

      for (var i in events)
        emitEvent(events[i], note, velocity);

    } else if (midiThrough_) {
      outs_.note(note, velocity);

    } else {
      outs_.fail(note);
    }
  };

  this.setMidiThrough = function(on) {
    midiThrough_ = on;
    post('Midi through is now ' + (on ? 'on' : 'off') + '\n');
  };

  function setByFileName(name) {
    var nt = name && name.length && FileReader.ReadJson(name);
    if (!nt)
      Postln("Couldn't read", name);

    outs_.ready(!!nt);
    return nt;
  };

  this.setNoteTableMap = function(filename) {
    var table = setByFileName(filename);
    if (table) {
      mapFile_ = filename;
      noteTableMap_ = {};

      var first = true;
      for (var i in table) {
        var name = Midi.forceNoteNumber(i);
        noteTableMap_[name] = table[i];
        if (first) {
          selectTable(i);
          first = false;
        }
      }
    }
  };

  this.reload = function() {
    var t = tableName_;
    this.setNoteTableMap(mapFile_);
    this.selectTable(t);
  };
};

#endif  // __SWIRLY_NOTE_MAPPER__
