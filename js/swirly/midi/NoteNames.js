#ifndef __SWIRLY_MIDI_NOTENAMES__
#define __SWIRLY_MIDI_NOTENAMES__

#include "swirly/midi/midi.js"
#include "swirly/util/logging.js"

Midi.NOTE_TABLE = {
  'C': 0,
  'D': 2,
  'E': 4,
  'F': 5,
  'G': 7,
  'A': 9,
  'B': 11
};

Midi.SHARPS = ['C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#', 'A', 'A#', 'B'];
Midi.FLATS = ['C', 'Db', 'D', 'Eb', 'E', 'F', 'Gb', 'G', 'Ab', 'A', 'Bb', 'B'];

Midi.FORBIDDEN_MODIFIER = [
  {"C": true, "F": true},  // Can't have flats.
  {},
  {"B": true, "F": true}  // Can't have sharps.
];

Midi.FIRST_OCTAVE = -1;

Midi.nameToNote = function(name) {
  var len = name.length;
  if (len < 2 || len > 4) {
    ERROR("Can't decipher note name", name);
    return 0;
  }

  var i = 0;
  var noteName = name[i++].toUpperCase();
  var noteNum = Midi.NOTE_TABLE[noteName];
  if (noteNum === undefined) {
    ERROR("Can't decipher note name", name);
    return 0;
  }

  var delta = 0;

  var next = name[i++];
  if (next == '#')
    delta = 1;
  else if (next == 'b')
    delta = -1;
  else
    i--;

  if (i >= len) {
    ERROR("Didn't find an octave", name);
    return 0;
  }

  var sign = 1;
  next = name[i++];
  if (next == '-')
    sign = -1;
  else
    i--;

  if (i >= len) {
    ERROR("Found a sign but no octave", name);
    return 0;
  } else if (i < (len - 1)) {
    ERROR("Extra characters at end of", name);
  }

  var octave = sign * parseInt(name[i]);

  var note = 12 * (octave - Midi.FIRST_OCTAVE) + noteNum + delta;
  if (note < 0)
    ERROR("Note is below 0", name);
  else if (note > 127)
    ERROR("Note is above 127", name);
  else
    return note;

  return 0;
};

Midi.noteToName = function(note, useFlat) {
  var octave = Math.floor(note / 12);
  var noteRemains = note - 12 * octave;

  return (useFlat ? Midi.FLATS : Midi.SHARPS)[noteRemains] +
    (octave + Midi.FIRST_OCTAVE);
};

Midi.forceNumber = function(item, forcer) {
  if (typeof(item) == 'number')
    return item;

  if (!(typeof(item) == 'string' || item.length)) {
    ERROR("Couldn't understand number", item);
    return false;
  }

  function isNumber(n) {
    return !isNaN(parseFloat(n)) && isFinite(n);
  };

  return isNumber(item) ? parseInt(item) : forcer(item);
};

Midi.forceNoteNumber = function(note) {
  return Midi.forceNumber(note, Midi.nameToNote);
};

#endif  // __SWIRLY_MIDI_NOTENAMES__
