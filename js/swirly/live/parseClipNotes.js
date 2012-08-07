#ifndef __PARSE_CLIP_NOTES
#define __PARSE_CLIP_NOTES

#include "swirly/live/Live.js"
#include "swirly/util/print.js"
#include "swirly/util/binarySearch.js"

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

Live.NOTE_GROUP_THRESHOLD = 1.0 / 64.0;
Live.NEAREST_THRESHOLD = 1.0 / 32.0;


Live.ClipNotes = function(slot) {
  var api = new LiveAPI(Live.ClipNamePath(slot));
  api.call('select_all_notes');
  var rawNotes = api.call('get_selected_notes');
  var notes = Live.parseClipNotes(rawNotes);
  var length = api.get('length');

  function timeIndex(note) { return note.time; };
  function firstTimeIndex(notes) { return notes[0].time; };

  var groupedNotes = Util.groupItems(notes, Live.timeIndex,
                                     Live.NOTE_GROUP_THRESHOLD, true);

  this.getNearestNote = function(time, threshold) {
    threshold = threshold || Live.NEAREST_THRESHOLD;
    var result = [];
    if (groupedNotes.length) {
      var index = Util.binarySearch(groupedNotes, time, firstTimeIndex);
      // index is the last notegroup whose first note is at or before 'time'.

    }
    return result;
  };
};

Live.getClipNotes = function(slot) {
};

#endif
