#ifndef __NOTE_FOLLOWER__
#define __NOTE_FOLLOWER__

#include "swirly/midi/midi.js"

Midi.NoteFollower = function(lightPool, allowDupes) {
  var keyAssignments = {};
  var lastLight;
  var lastNote;
  allowDupes = allowDupes || (lightPool.length == 1);

  this.Clear = function() {
    keyAssignments = {};
  };

  function Random() {
    while (true) {
      var light = lightPool[Math.floor(Math.random() * lightPool.length)];
      if (allowDupes || light !== lastLight)
        return light;
    }
  };

  function GetLight(note) {
    var light = keyAssignments[note];
    if (!light) {
      light = Random();
      keyAssignments[note] = light;
    }
    return light;
  };

  this.Note = function(note, value) {
    var light = GetLight(note);
    if (value)
      lastLight = light;
    return [light, value];
  };

  this.Controller = function(controller, value) {
    return lastLight && [lastLight, value];
  };
};

#endif  // __NOTE_FOLLOWER__
