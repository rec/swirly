autowatch = 1;
outlets = 1;

#include "swirly/max/inlets.js"
#include "swirly/util/logging.js"
#include "swirly/windmapper/Scenes.js"
#include "swirly/windmapper/ShowRunner.js"

var _show_runner = new ShowRunner();

Max.ObjectInlets(_show_runner);

_show_runner.addCue('sequence', 'test', Loop(Scenes.fadeIn, 3, 2));
_show_runner.addCue('sequence', 'test2', Scenes.flash);
_show_runner.addCue('mapper', 'test', Scenes.moving_mapper);

LOADED();
