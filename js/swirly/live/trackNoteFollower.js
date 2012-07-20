#ifndef __LIVE_TRACK_NOTE_FOLLOWER
#define __LIVE_TRACK_NOTE_FOLLOWER

#include "swirly/live/live.js"
#include "swirly/live/parseClipNotes.js"
#include "swirly/live/clipNoteFollower.js"

Live.TrackNoteFollower = function(out) {
  var self = this;
  var listening = false;
  var slotsToNotes = {};
  var clipFollower;
  var note, velocity;
  var clipStart = 0;

   function ClipSlot(slot) {
    if (slot < 0) {
      clipFollower = undefined;
      Postln('empty slot');

    } else {
      clipFollower = slotsToNotes[slot];
      if (clipFollower) {
        Postln('already know', slot, 'as', clipFollower.Notes());
      } else {
        clipFollower = new Live.ClipNoteFollower(Live.getClipNotes(slot));
        slotsToNotes[slot] = clipFollower;
        Postln('new slot', slot, clipFollower.Notes());
      }
    }
    out.transport('clip');
  };

  self.Restart = function() {
    if (!listening) {
      Live.ListenToProperty('clip', ClipSlot);
      Postln('Starting to list');
    }
    listening = true;
  };

  self.Note = function(n, v) {
    note = n;
    velocity = v;
    out.transport('note');
  };

  self.Transport = function(cause, bars, beats, units, resolution, tempo,
                            numerator) {
    var totalBeats = (bars * numerator) + beats + (units / resolution);
    Postln('Transport', cause, totalBeats);
    if (cause == 'clip') {
      clipStart = totalBeats;
    } else if (clipFollower) {
      var time = totalBeats - clipStart;
      var res = clipFollower.NoteIn(note, velocity, totalBeats);
      if (res && res[1])
        out.makenote.apply(this, res);
    }
  };
};

#endif  // __LIVE_TRACK_NOTE_FOLLOWER