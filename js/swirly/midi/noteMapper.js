#ifndef __SWIRLY_NOTE_MAPPER__
#define __SWIRLY_NOTE_MAPPER__

#include "swirly/midi/noteNames.js"
#include "swirly/util/logging.js"
#include "swirly/util/print.js"
#include "swirly/util/int.js"
#include "swirly/util/trim.js"
#include "swirly/util/FileReader.js"

Midi.NoteMapper = function(outs_) {
  var noteTable_ = {};  // Map notes to events or lists of events.
  var midiThrough_ = true;
  var mapFile_ = '';
  var tableName_ = '';
  var noteOffTable_ = {};
  var noteTableMap_ = {};  // Map from table names to note tables.

  this.selectTable = function(name) {
    tableName_ = name;
    noteTable_ = noteTableMap_[tableName_];
    outs_.ready(!!noteTable_);
  };

  this.noteIn = function(note, velocity) {
    if (!velocity) {
      // Don't send note offs for items we're handling ourselves.
      var offCount = noteOffTable_[note] || 0;
      if (offCount) {
        noteOffTable_[note] = offCount - 1;
        return;
      }
    }

    var events = noteTable_[note];

    if (events) {
      if (!events[0])  // Singleton.
        events = [events];
      for (var i in events) {
        var event = events[i];
        var n = event.note;
        if (n === undefined) {
          ERROR('Event without note', event);
          continue;
        }

        n =

        var delay = event.delay;
        var len = event.length;
        if (len)
          noteOffTable_[note] = 1 + (noteOffTable_[note] || 0);

        Postln(event, n, delay, len);
        if (delay) {
          outs_.delay(delay);
          if (len)
            outs_.pipemakenote(n, velocity, len);
          else
            outs_.pipenote(n, velocity);
        } else {
          if (len)
            outs_.makenote(n, velocity, len);
          else
            outs_.note(n, velocity);
        }
      }
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
