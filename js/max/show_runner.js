autowatch = 1;
outlets = 0;

#include "swirly/max/inlets.js"
#include "swirly/util/logging.js"
#include "swirly/windmapper/Scenes.js"
#include "swirly/windmapper/ShowRunner.js"

var _show_runner = new ShowRunner();

Max.ObjectInlets(_show_runner);

_show_runner.addSequence(
    ['first fade in', Loop(Scenes.fadeIn, 3, 2)],
    ['flash', Scenes.flash],
    ['program 1', Scenes.program1],
    ['program 2', Scenes.program2]
);

_show_runner.addMapper(
    ['test', Scenes.moving_mapper]);

LOADED();
