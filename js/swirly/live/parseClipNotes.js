#ifndef __PARSE_CLIP_NOTES
#define __PARSE_CLIP_NOTES

#include "swirly/live/Live.js"
#include "swirly/util/print.js"

Live.parseClipNotes = function(parts, keepMutedNotes) {
  var notes = [];
  var pos = 0;
  var part = parts[pos++];
  if (part != 'notes') {
    ERROR('Expected notes, got ', part);
    return;
  }

  var noteCount = parts[pos++];
  for (var i = 0; i < noteCount; ++i) {
    var part = parts[pos++];
    if (part != 'note') {
      ERROR('Expected notes, got ', part);
      return;
    }
    var note = {};
    note.note = parts[pos++];
    note.time = parts[pos++];
    note.duration = parts[pos++];
    note.velocity = parts[pos++];
    note.muted = parts[pos++];
    if (keepMutedNotes || !note.muted)
      notes.push(note);
  }

  var done = parts[pos++];
  if (done != 'done')
    ERROR('Expected done, got ', done);

  if (parts.length != pos)
    ERROR('Expected empty list, got ', parts);

  function compare(n1, n2) {
    if (n1.time < n2.time)
      return -1;
    if (n1.time === n2.time)
      return 0;
    return 1;
  };

  notes.sort(compare);
  return notes;
};

Live.getClipNotes = function(slot) {
  var api = new LiveAPI(Live.ClipNamePath(slot));
  api.call('select_all_notes');
  return Live.parseClipNotes(api.call('get_selected_notes'));
};

#endif
