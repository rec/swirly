#ifndef __PARSE_CLIP_NOTES
#define __PARSE_CLIP_NOTES

#include "swirly/live/live.js"
#include "swirly/util/print.js"

Live.parseClipNotes = function(parts) {
  var notes = [];
  var pos = 0;
  var part = parts[pos++];
  if (part != 'notes') {
    Postln('Expected notes, got ', part);
    return;
  }

  var noteCount = parts[pos++];
  for (var i = 0; i < noteCount; ++i) {
    var part = parts[pos++];
    if (part != 'note') {
      Postln('Expected notes, got ', part);
      return;
    }
    var note = {};
    note.pitch = parts[pos++];
    note.time = parts[pos++];
    note.duration = parts[pos++];
    note.velocity = parts[pos++];
    note.muted = parts[pos++];
    notes.push(note);
  }

  var done = parts[pos++];
  if (done != 'done')
    Postln('Expected done, got ', done);

  if (parts.length != pos)
    Postln('Expected empty list, got ', parts);

  return notes;
};

#endif
