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
  var mapFile = '';
  var tableName = '';
  var noteOffTable = {};
  var noteTableMap = {};  // Map from table names to note tables.

  this.selectTable = function(name) {
    tableName = name;
    noteTable = noteTableMap[tableName];
    outs.ready(!!noteTable);
  };

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

  function setByFileName(name) {
    var nt = name && name.length && FileReader.ReadJson(name);
    if (!nt)
      Postln("Couldn't read", name);

    outs.ready(!!nt);
    return nt;
  };

  this.setNoteTableMap = function(filename) {
    var nt = setByFileName(filename);
    if (nt) {
      noteTableMap = nt;
      mapFile = filename;
      for (var i in noteTableMap) {
        selectTable(i);  // Select the first item we see.
        return;
      }
    }
  };

  this.reload = function() {
    var t = tableName;
    this.setNoteTableMap(mapFile);
    this.selectTable(t);
  };
};

#endif  // __SWIRLY_NOTE_MAPPER__
