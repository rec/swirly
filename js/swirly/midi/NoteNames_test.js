#include "swirly/midi/NoteNames.js"

Testing.TestFunction(function() {
  // Change object.x from 3 to 10 in two different ways.
  Testing.ExpectEqual('Midi.NoteNames', Midi.nameToNote('c-1'), 0);
  Testing.ExpectEqual('Midi.NoteNames', Midi.nameToNote('c#-1'), 1);
  Testing.ExpectEqual('Midi.NoteNames', Midi.nameToNote('db-1'), 1);
  Testing.ExpectEqual('Midi.NoteNames', Midi.nameToNote('d-1'), 2);
  Testing.ExpectEqual('Midi.NoteNames', Midi.nameToNote('G9'), 127);
  Testing.ExpectEqual('Midi.NoteNames', Midi.nameToNote('Gb9'), 126);

  Testing.ExpectEqual('Midi.NoteNames', Midi.noteToName(0), 'C-1');
  Testing.ExpectEqual('Midi.NoteNames', Midi.noteToName(1), 'C#-1');
  Testing.ExpectEqual('Midi.NoteNames', Midi.noteToName(1, true), 'Db-1');
  Testing.ExpectEqual('Midi.NoteNames', Midi.noteToName(2), 'D-1');
  Testing.ExpectEqual('Midi.NoteNames', Midi.noteToName(127), 'G9');
  Testing.ExpectEqual('Midi.NoteNames', Midi.noteToName(126), 'F#9');
  Testing.ExpectEqual('Midi.NoteNames', Midi.noteToName(126, true), 'Gb9');
});
