#ifndef __LIVE_TRACK_NOTE_FOLLOWER
#define __LIVE_TRACK_NOTE_FOLLOWER

#include "swirly/live/live.js"
#include "swirly/live/parseClipNotes.js"
#include "swirly/live/Property.js"
#include "swirly/live/clipNoteFollower.js"

Live.TrackNoteFollower = function(out) {
  var self = this;
  var listening = false;
  var slotsToNotes = {};
  var clipFollower;
  var note, velocity;
  var clipStart = 0;
  var clipSlot = -1;
  var bpm = 120.0;

  function ClipSlot(slot) {
    clipSlot = slot;
    var clipName = Live.GetProperty('clipname', slot);
    if (clipName)
      out.info('clip', clipName[0]);
    if (slot < 0) {
      clipFollower = undefined;
    } else {
      clipFollower = slotsToNotes[slot];
      if (!clipFollower) {
        clipFollower = new Live.ClipNoteFollower(Live.getClipNotes(slot));
        clipFollower.SetBpm(bpm);
        slotsToNotes[slot] = clipFollower;
      }
    }
    out.transport('bang');
  };

  self.Restart = function() {
    if (!listening)
      Live.ListenToProperty('clip', ClipSlot);
    listening = true;
  };

  self.Note = function(note, velocity) {
    var time = Live.GetProperty('position', clipSlot)[0];
    if (!time) {
      ERROR('Unable to get time from clipSlot', clipSlot);
      return;
    }
    var res = clipFollower.NoteIn(note, velocity, time);
    if (res && res[1])
      out.makenote(res[0], res[1], (1000.0 * res[2]) / (bpm * 60.0));
    else if (velocity)
      out.info('reject', note);
  };

  self.Transport = function(name, b) {
    bpm = b;
    clipFollower.SetBpm(bpm);
  };
};

#endif  // __LIVE_TRACK_NOTE_FOLLOWER