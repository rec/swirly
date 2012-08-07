#ifndef __SWIRLY_NOTE_MAPPER__
#define __SWIRLY_NOTE_MAPPER__

#include "swirly/midi/midi.js"
#include "swirly/util/logging.js"
#include "swirly/util/print.js"
#include "swirly/util/trim.js"
#include "swirly/util/FileReader.js"

Midi.NoteMapper = function(outs) {
  var noteTable = {};
  var midiThrough = true;

  this.noteIn = function(note, velocity) {
    var note = arguments[0], velocity = arguments[1];
    var events = noteTable[note];
    var sent = false;
    if (midiThrough || !events) {
      outs.note([note, velocity]);
      sent = true;
    }

    if (events) {
      if (typeof(events[0]) == 'number')
        events = [events];
      for (var i in events) {
        var event = events[i];
        var n = event[0], time = event[1];
        if (time) {
          outs.delay([time]);
          outs.pipenote(n, velocity);
        } else {
          outs.note([n, velocity]);
        }
        sent = true;
      }
    }

    if (!sent)
      outs.fail('bang');
  };

  this.setMidiThrough - function(on) {
    midiThrough = on;
    post('Midi through is now ' + (on ? 'on' : 'off') + '\n');
  };

  function getNoteTable(table) {
    if (typeof(table) != 'string')
      return table;

    var t = Util.trim(table);
    if (!t.length) {
      ERROR("Table was empty!", table);
      return {};
    }

    if (t[0] != '{')
      t = FileReader.Read(t);
    return JSON.parse(t);
  };

  this.setNoteTable = function(table) {
    this.noteTable = getNoteTable(table);
    Postln('Set new note table', table)
  };
};

#endif  // __SWIRLY_NOTE_MAPPER__
