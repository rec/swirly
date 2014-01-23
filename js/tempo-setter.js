autowatch = 1;
inlets = 1;

#include "swirly/util/logging.js"
#include "swirly/max/inlets.js"
#include "swirly/max/outlets.js"
#include "swirly/midi/TempoSetter.js"

Max.SetOutlets(['line', 'Arguments to a "line" connected to the tempo.'],
               ['error', 'Did we get an error?']);


var _setter = new Midi.TempoSetter(Max.Out);

FileReader.SetPath([
  '/Users/tom/Documents',
  '/Users/tom/Documents/Odd',
  '/Volumes/Media/Odd']);

Max.SetInlets(
  ['Control change', _setter.cc],
  ['Program change', _setter.pc],
  ['Tempo', _setter.tempo],
  ['Data file name', _setter.text],
  ['Reload', _setter.reload])


LOADED();