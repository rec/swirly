autowatch = 1;

#include "swirly/live/panner.js"

var panner = new Live.Panner();

panner.Init(jsarguments.slice(1));

function note(note, velocity) {
  if (velocity)
    panner.Next();
};

function set(_) {
  panner.Init(arrayfromargs(arguments));
};

post('recompiled megapan.jso\n');