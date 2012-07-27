#ifndef __LIVE_CLIP_NOTE_FOLLOWER
#define __LIVE_CLIP_NOTE_FOLLOWER

#include "swirly/live/live.js"
#include "swirly/util/mod.js"

Live.ClipNoteFollower = function(notes) {
  notes = notes || [];
  var length;
  var noteOnDict = {};
  var maxGap = 1000;  // in milliseconds.
  var gap;  // in beats
  var bps;

  this.Notes = function() { return notes; };

  function fixGap() {
    gap = (maxGap / 1000) / (bpm / 60.0);
    Logging.Log('gap', gap, maxGap, bpm);
  };

  // In milliseconds.
  this.SetGap = function(g) { maxGap = g; fixGap(); }
  this.SetBpm = function(b) { bpm = b; fixGap(); }

  this.SetBpm(120.0);

  function Closest(time) {
    // Logging.Log('!!!!!', notes);
    var len = notes.length;
    if (len <= 1)
      return 0;

    var after = 0;
    for (; after < len && time < notes[after].time; ++after);

    var afterTime = (after < len) ? notes[after].time : length;
    var deltaAfter = afterTime - time;
    var before = (after ? after : len) - 1;
    var timeBefore = notes[before].time;
    var deltaBefore = time - timeBefore + (after ? length : 0);

    // Logging.Log('Closest', time, deltaBefore, deltaAfter, notes[before], notes[after], before, after);
    return (deltaBefore < deltaAfter) ? before : after;
  };

  this.NoteIn = function(note, value, time) {
    if (notes.length) {
      if (value) {
        var n = Closest(time);
        var closest = notes[n];
        if (!closest) {
          // Logging.Log('No closest for', n, notes, notes.length);
          return;
        }
        // Logging.Log('closest', closest, n);
        var diff = Math.abs(closest.time - time);
        if (diff <= gap) {
          noteOnDict[note] = closest.note;
          return [closest.note, value, closest.duration];
        } else {
          // Logging.Log(diff, '>', gap, maxGap, time, closest.time);
        }

      } else {
        var actualNote = noteOnDict[note];
        if (actualNote !== null) {
          delete noteOnDict[note];
          return [actualNote, 0, 0];
        }
      }
    }
  };
};

#endif  // __LIVE_CLIP_NOTE_FOLLOWER
