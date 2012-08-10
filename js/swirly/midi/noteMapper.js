#ifndef __SWIRLY_NOTE_MAPPER__
#define __SWIRLY_NOTE_MAPPER__

#include "swirly/midi/midi.js"
#include "swirly/util/logging.js"
#include "swirly/util/print.js"
#include "swirly/util/int.js"
#include "swirly/util/trim.js"
#include "swirly/util/FileReader.js"

Midi.NoteMapper = function(outs) {
  var noteTable = {};  // Map notes to events or lists of events.
  var midiThrough = true;
  var tableName = '';
  var noteOffTable = {};

  // outputs look like:  makenote

  this.noteIn = function(note, velocity) {
    if (!velocity) {
      // Don't send note offs for items we're handling ourselves.
      var offCount = noteOffTable[note] || 0;
      if (offCount) {
        noteOffTable[note] = offCount - 1;
        return;
      }
    }

    var events = noteTable[note];

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

        var delay = event.delay;
        var len = event.length;
        if (len)
          noteOffTable[note] = 1 + (noteOffTable[note] || 0);

        Postln(event, n, delay, len);
        if (delay) {
          outs.delay(delay);
          if (len)
            outs.pipemakenote(n, velocity, len);
          else
            outs.pipenote(n, velocity);
        } else {
          if (len)
            outs.makenote(n, velocity, len);
          else
            outs.note(n, velocity);
        }
      }
    } else if (midiThrough) {
      outs.note(note, velocity);
    } else {
      outs.fail(note);
    }
  };

  this.setMidiThrough = function(on) {
    midiThrough = on;
    post('Midi through is now ' + (on ? 'on' : 'off') + '\n');
  };

  this.setNoteTable = function(table) {
    tableName = table;
    if (table && table.length) {
      var nt = FileReader.ReadJson(table);
      if (nt) {
        noteTable = nt;
        Postln('Set new note table', noteTable);
        outs.ready(true);
        return;
      }
    }
    Postln("Couldn't read", table);
    outs.ready(false);
  };

  this.reload = function() {
    this.setNoteTable(tableName);
  };
};

#endif  // __SWIRLY_NOTE_MAPPER__
