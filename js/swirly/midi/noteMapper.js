#ifndef __SWIRLY_NOTE_MAPPER__
#define __SWIRLY_NOTE_MAPPER__

#include "swirly/midi/midi.js"
#include "swirly/util/logging.js"
#include "swirly/util/print.js"
#include "swirly/util/int.js"
#include "swirly/util/trim.js"
#include "swirly/util/FileReader.js"

Midi.NoteMapper = function(outs) {
  var noteTable = {};
  var midiThrough = true;

  this.noteIn = function(note, velocity) {
    var events = noteTable[note];
    var sent = false;
    if (midiThrough || !events) {
      outs.note(note, velocity);
      sent = true;
    }

    if (events) {
      if (typeof(events[0]) == 'number')
        events = [events];
      for (var i in events) {
        var event = events[i];
        var n = Util.toInt(event[0]);
        var time = Util.toInt(event[1]);
        if (time) {
          outs.delay(time);
          outs.pipenote(n, velocity);
        } else {
          outs.note(n, velocity);
        }
        sent = true;
      }
    }

    if (!sent)
      outs.fail('bang');
  };

  this.setMidiThrough = function(on) {
    midiThrough = on;
    post('Midi through is now ' + (on ? 'on' : 'off') + '\n');
  };

  this.setNoteTable = function(table) {
    var nt = FileReader.ReadData(table);
    if (nt) {
      noteTable = nt;
      Postln('Set new note table', noteTable);
    } else {
      Postln("Couldn't read", table);
    }
  };
};

#endif  // __SWIRLY_NOTE_MAPPER__
